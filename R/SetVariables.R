SetVariablesForGradmod = function()
{
  eps = 10^-10
  G = 10^-2
  B = 0.5
  m = 20
  n = 10000
  x = c(1,1)
  v = c("x1","x2")
}

SetVariablesForPowell = function()
{
  eps = 10^-10
  G = 10^-2
  eta = G *2
  m = 20
  k = 20
  n = 10000
  max = 100
  x = c(1,1)
  v = c("x1","x2")
}

SetVariablesForBarBor = function()
{
  eps = 10^-10
  n = 10000
  x = c(1,2)
  v = c("x1","x2")
}

SetVectorTo2D = function()
{
  v = c("x1","x2")
}

SetVectorTo3D = function()
{
  v = c("x1","x2", "x3")
}

SetVectorTo4D = function()
{
  v = c("x1","x2","x3", "x4")
}

SetVectorTo5D = function()
{
  v = c("x1","x2","x3", "x4", "x5")
}

SetVectorTo6D = function()
{
  v = c("x1","x2","x3", "x4", "x5", "x6")
}
