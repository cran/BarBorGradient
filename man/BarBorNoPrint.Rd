\name{BarBorNoPrint}
\alias{BarBorNoPrint}
\title{The BarBor funtcion without printing.}
\usage{
BarBorNoPrint(exp,eps,x,v,n)
}
\description{
Same approximation method as the BarBor function, but this doesn't print out anything. Its recommended use is for timing the approximation.
}
\arguments{
  \item{exp}{
    Expression of the function to be minimized.
  }
  \item{eps}{
    Precision of the approximation, recommended value is 10^-10.
  }
  \item{x}{
    Starting point of the approximation.
  }
  \item{v}{
    A character vector of the functions variables, for instance the two dimension fuction x1*x1+10*x2*x2 needs a c("x1","x2") vector.
  }
  \item{n}{
    Maximum setps to make while approximating, if the calculation reaches this number it exits with the current value and point. Recommended to be 10000.
  }
}
\examples{
test1 = expression(x1*x1+10*x2*x2)
eps = 10^-15
x = c(3,4)
v = c("x1","x2")
n = 10000
BarBorNoPrint(test1,eps,x,v,n)
}
