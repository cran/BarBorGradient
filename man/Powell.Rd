\name{Powell}
\alias{Powell}
\title{Powell's method for finding a functions local minimum.}
\usage{
Powell(exp,eps,G,eta,m,k,x,v,n)
}
\description{
Powell's method for finding a function local minimum. The function need not be differentiable, and no derivatives are taken. The function must be a real-valued function of a fixed number of real-valued inputs.
}
\arguments{
  \item{exp}{
    Expression of the function to be minimized.
  }
  \item{eps}{
    Precision of the approximation, recommended value is 10^-10.
  }
  \item{G}{
    Inner approximation coefficient, recommended value is 10^-2.
  }
  \item{eta}{
    Inner approximation coefficient, recommended value is G*2.
  }
  \item{m}{
    Inner steps, recommended value is 20.
  }
  \item{k}{
    Second inner approximation steps, recommended value is 20.
  }
  \item{x}{
    Starting point of the approximation.
  }
  \item{v}{
    A character vector of the functions variables. Exmaple: the two dimension fuction x1*x1+10*x2*x2 needs a c("x1","x2") vector.
  }
  \item{n}{
    Maximum setps to make while approximating, if the calculation reaches this number it exits with the current value and point. Recommended to be 10000.
  }
}
\examples{
test1 = expression(100*(x1*x1-x2)*(x1*x1-x2)+(1-x1)*(1-x1))
eps = 10^-5
G = 10^-2
eta = G *2
m = 20
k = 20
n = 10000
max = 1000
x = c(1,1)
v = c("x1","x2")
Powell(test1,eps,G,eta,m,k,x,v,n)
}
