#' @export Gradmod

Gradmod = function(exp,eps,G,B,m,x,v,n)
{
	npar <- length(x)
	rx = 0
	if(eps < 0)(return (print("Az eps nem lehet negativ")))
	if(n == 0) (n = Inf)
	i = 0
	dexp = deriv(exp,v)
	while(i < n)
	{
		i = i + 1
		dd <- data.frame(rbind(c(x)))
		colnames(dd) <- v
		szam = eval(dexp,dd)
		j = 0
		vege = 0
		for(j in 1:npar)
		{
			if (abs(attr(szam,"gradient")[j]) >= eps ) {vege = 1}
		}
		if(vege == 0) {print("Stacionarius pont: "); print(x); print("Fuggveny ertek: "); print(eval(exp,dd)); print("Lepesszam: "); print(i); break}
		dk = - c(attr(szam,"gradient")[1:npar])
		maxB = 0
		for(j in 0:m){
			aktB = B^j
			rx = x
			x = x + aktB * dk
			dd <- data.frame(rbind(c(x)))
			colnames(dd) <- v
			sz1 = eval(exp,dd) #f(xk+szig*dk)
			x = rx
			dd <- data.frame(rbind(c(x)))
			colnames(dd) <- v
			sz2 = eval(exp,dd) # f(xk)
			a = 0
			for(l in 1:npar)
			{
				a = a + attr(szam,"gradient")[l] * dk[l]
			}
			if(sz1 - sz2 <= aktB * G * a) {maxB = aktB; break}
			if(j == m & maxB == 0) {maxB = aktB; print("A legkisebb betat kellett valaszatni!")}
		}
		x = x + maxB * dk
	}
	if(i == n){print(x);print(i)}
}
