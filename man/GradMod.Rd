\name{Gradient Method}
\alias{Gradmod}
\title{Gradient method for function minimum approximation.}
\usage{
Gradmod(exp,eps,G,B,m,x,v,n)
}
\description{
Gradient method for approximating a functions minimum value. The purpose of this method is to compare its result with the BarBor method.
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
  \item{B}{
    Inner approximation coefficient, recommended value is 0.5.
  }
  \item{m}{
    Inner steps, recommended value is 20.
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
test1 = expression(x1*x1+10*x2*x2)
eps = 10^-10
G = 10^-2
B = 0.5
m = 20
x = c(3,4)
v = c("x1","x2")
n = 10000
Gradmod(test1,eps,G,B,m,x,v,n)
}
