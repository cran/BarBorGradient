#' @export Powell

Powell = function(exp,eps,G,eta,m,k,x,v,n)
{
	npar <- length(x)
	rx = 0
	if(eps < 0)(return (print("Az eps nem lehet negativ")))
	if(G > eta | eta > 1)(return (print("Az eta-nak G es 1 kozott kell lenni")))
	if(n == 0) (n = Inf)
	i = 0
	dexp = deriv(exp, v)
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
		szig = szigkival(dk,szam,x,dexp,npar,G,eta,k,m,v)
		x = x + szig * dk
	}
	if(i == n){print(x);print(i)}
}

szigkival = function(dk,szam,x,dexp,npar,G,eta,k,m,v)
{
	szig = 1
	sziga = 0
	szigf = 0
	rx = x
	x = x + szig * dk
	dd <- data.frame(rbind(c(x)))
	colnames(dd) <- v
	szam2 = eval(dexp,dd)
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
	if(sz1 - sz2 <= szig * G * a)
	{
		a = 0
		for(l in 1:npar)
		{
			a = a + attr(szam,"gradient")[l] * dk[l]
		}
		b = 0
		for(l in 1:npar)
		{
			b = b + attr(szam2,"gradient")[l] * dk[l]
		}
		if(eta * a <= b) (return (szig))
		for(j in 1:k)
		{
			szigf = 2^j
			rx = x
			x = x + szigf * dk
			dd <- data.frame(rbind(c(x)))
			colnames(dd) <- v
			sz1 = eval(exp,dd) #f(xk+szigf*dk)
			x = rx
			a = 0
			for(l in 1:npar)
			{
				a = a + attr(szam,"gradient")[l] * dk[l]
			}
			if(sz1 - sz2 <= szigf * G * a) {szig = szigf; sziga = szigf/2;break}
		}
	}else
	{
		for(j in 1:m)
		{
			sziga = (1/2)^j
			rx = x
			x = x + sziga * dk
			dd <- data.frame(rbind(c(x)))
			colnames(dd) <- v
			sz1 = eval(exp,dd) #f(xk+sziga*dk)
			x = rx
			a = 0
			for(l in 1:npar)
			{
				a = a + attr(szam,"gradient")[l] * dk[l]
			}
			if(sz1 - sz2 <= sziga * G * a) {szig = sziga; szigf = sziga*2;break}
		}
	}
	h = 0
	while(1)
	{
		h = h + 1
		if(h == max) {print("Max lepesszam!");break}
		szig = sziga
		rx = x
		x = x + szig * dk
		dd <- data.frame(rbind(c(x)))
		colnames(dd) <- v
		szam2 = eval(dexp,dd)
		x = rx
		a = 0
		for(l in 1:npar)
		{
			a = a + attr(szam,"gradient")[l] * dk[l]
		}
		b = 0
		for(l in 1:npar)
		{
			b = b + attr(szam2,"gradient")[l] * dk[l]
		}
		if(eta * a <= b) {break}
		szig = (sziga + szigf)/2
		rx = x
		x = x + szig * dk
		dd <- data.frame(rbind(c(x)))
		colnames(dd) <- v
		sz1 = eval(exp,dd) #f(xk+szig*dk)
		x = rx
		a = 0
		for(l in 1:npar)
		{
			a = a + attr(szam,"gradient")[l] * dk[l]
		}
		if(sz1 - sz2 <= szig * G * a)
		{
			sziga = szig
		}else
		{
			szigf = szig
		}
	}
	return (sziga)
}
