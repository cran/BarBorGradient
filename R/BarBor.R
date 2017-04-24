#' @import stats
#' @export BarBor

BarBor = function(exp,eps,x,v,n)
{
	npar <- length(x)
	rx = 0
	rgk = 0
	if(eps < 0)(return (print("The eps cannot be negativ!")))
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
		if(vege == 0) {print("Stationary point: "); print(x); print("Function value: "); print(eval(exp,dd)); print("Steps: "); print(i); break}
		gk = c(attr(szam,"gradient")[1:npar])
		dxk = x - rx
		dgk = gk - rgk
		alph = ((dxk %*% dgk) / (dgk %*% dgk))
		alph2 = ((dxk %*% dxk) / (dxk %*% dgk))
		rx = x
		rgk = gk
		x = x - alph * gk
	}
	if(i == n){print(x);print(i)}
}

#' @export
BarBorNoPrint = function(exp,eps,x,v,n)
{
  npar <- length(x)
  rx = 0
  rgk = 0
  if(eps < 0)(return (print("The eps cannot be negativ!")))
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
    if(vege == 0) {break}
    gk = c(attr(szam,"gradient")[1:npar])
    dxk = x - rx
    dgk = gk - rgk
    alph = ((dxk %*% dgk) / (dgk %*% dgk))
    alph2 = ((dxk %*% dxk) / (dxk %*% dgk))
    rx = x
    rgk = gk
    x = x - alph * gk
  }
  if(i == n){print(x);print(i)}
}
