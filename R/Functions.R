test1 = expression(x1*x1+10*x2*x2)
test2 = expression(100 * (x2 - x1 * x1)^2 + (1 - x1)^2)
test3 = expression(100*(x1*x1-x2)*(x1*x1-x2)+(1-x1)*(1-x1))
test4 = expression((x2-(5.1/4*pi^2)*x1^2+(5/pi)*x1-6)^2+10*(1-(1/8*pi))*cos(x1)+10)
test5 = expression(4*x1^2-2.1*x1^4+1/3*x1^6+x1*x2-4*x2^2+4*x2^4)
test6 = expression(100 * (x1^2-x2)^2 + (x1-1)^2 + (x3-1)^2 + 90 * (x3^2-x4)^2 + 10.1 * ((x2-1)^2 + (x4-1)^2) + 19.8*(x2-1)*(x4-1))

#Drop-Wave Function:
DropWave = expression(-1 * ((1 + cos(12*sqrt(x1^2+x2^2))) / (0.5*(x1^2+x2^2) + 2)))
#Levy N. 13:
Levy = expression((sin(3*pi*x1))^2 + (x1-1)^2 * (1+(sin(3*pi*x2))^2) + (x2-1)^2 * (1+(sin(2*pi*x2))^2))
#Schaffer N. 2:
Schaffer = expression(0.5 + ((sin(x1^2-x2^2))^2 - 0.5) / ((1 + 0.001*(x1^2+x2^2))^2))
#Booth:
Booth = expression((x1 + 2*x2 - 7)^2 + (2*x1 + x2 - 5)^2)
#Three-Hump Camel:
ThreeHumpCamel = expression(2*x1^2 + -1.05*x1^4 + x1^6 / 6 + x1*x2 + x2^2)
#Easom function:
Easom = expression(-cos(x1)*cos(x2)*(exp(-(x1-pi)^2-(x2-pi)^2)))
#Beale function:
Beale = expression(((1.5 - x1 + x1*x2)^2) + ((2.25 - x1 + x1*x2^2)^2) + ((2.625 - x1 + x1*x2^3)^2))
#Colville function:
Colville = expression((100 * (x1^2-x2)^2) + ((x1-1)^2) + ((x3-1)^2) + (90 * (x3^2-x4)^2) + (10.1 * ((x2-1)^2 + (x4-1)^2)) + (19.8*(x2-1)*(x4-1)))
#Styblinski-Tang function 3D:
StyblinskiTang3D = expression(((x1^4 - 16*x1^2 + 5*x1) + (x2^4 - 16*x2^2 + 5*x2) + (x3^4 - 16*x3^2 + 5*x3))/2)
#Styblinski-Tang function 4D:
StyblinskiTang4D = expression(((x1^4 - 16*x1^2 + 5*x1) + (x2^4 - 16*x2^2 + 5*x2) + (x3^4 - 16*x3^2 + 5*x3) + (x4^4 - 16*x4^2 + 5*x4))/2)
#Rastrigin function 3D:
Rastrigin3D = expression(10*3 + (x1^2 - 10*cos(2*pi*x1)) + (x2^2 - 10*cos(2*pi*x2)) + (x3^2 - 10*cos(2*pi*x3)))
#Rastrigin function 4D:
Rastrigin4D = expression(10*3 + (x1^2 - 10*cos(2*pi*x1)) + (x2^2 - 10*cos(2*pi*x2)) + (x3^2 - 10*cos(2*pi*x3)) + (x4^2 - 10*cos(2*pi*x4)))
#Rosenbrock function 3D:
Rosenbrock3D = expression((100*(x2-x1^2)^2 + (x1-1)^2) + (100*(x3-x2^2)^2 + (x2-1)^2))
#Rosenbrock function 4D:
Rosenbrock4D = expression((100*(x2-x1^2)^2 + (x1-1)^2) + (100*(x3-x2^2)^2 + (x2-1)^2) + (100*(x4-x3^2)^2 + (x3-1)^2))
#Sum of squares 3D:
SumOfSquares3D = expression((1*x1^2) + (2*x2^2) + (3*x3^2))
#Sum of squares 4D:
SumOfSquares4D = expression((1*x1^2) + (2*x2^2) + (3*x3^2) + (4*x4^2))
#Dixon-price function 3D:
DixonPrice3D =expression(((x1-1)^2) + (2 * (2*x2^2 - x1)^2) + ((3 * (2*x3^2 - x2)^2)))
#Dixon-price function 4D:
DixonPrice4D =expression(((x1-1)^2) + (2 * (2*x2^2 - x1)^2) + ((3 * (2*x3^2 - x2)^2)) + (4* (2*x4 - x3)^2))
#Rotated hyper-ellipsoid function 2D:
RotatedHyperEllipsoid2D = expression((x1^2) + (x1^2) + (x2^2))
#Rotated hyper-ellipsoid function 3D:
RotatedHyperEllipsoid3D = expression((x1^2) + (x1^2) + (x2^2) + (x1^2) + (x2^2) + (x3^2))
#Rotated hyper-ellipsoid function 4D:
RotatedHyperEllipsoid4D = expression((x1^2) + (x1^2) + (x2^2) + (x1^2) + (x2^2) + (x3^2) + (x1^2) + (x2^2) + (x3^2) + (x4^2))
#Sphere Function 2D:
Sphere2D = expression((x1^2) + (x2^2))
#Sphere Function 3D:
Sphere3D = expression((x1^2) + (x2^2) + (x3^2))
#Sphere Function 4D:
Sphere4D = expression((x1^2) + (x2^2) + (x3^2) + (x4^2))
#Trid function 2D:
Trid2D = expression(((x1 - 1)^2 + (x2 - 1)^2) - (x2 * x1))
#Trid function 3D:
Trid3D = expression(((x1 - 1)^2 + (x2 - 1)^2 + (x3 - 1)^2) - ((x2 * x1) + (x3 * x2)))
#Trid function 4D:
Trid4D = expression(((x1 - 1)^2 + (x2 - 1)^2 + (x3 - 1)^2 + (x4 - 1)^2) - ((x2 * x1) + (x3 * x2) + (x4 * x3)))
#Trid function 6D:
Trid6D = expression(((x1 - 1)^2 + (x2 - 1)^2 + (x3 - 1)^2 + (x4 - 1)^2 + (x5 - 1)^2 + (x6 - 1)^2) - ((x2 * x1) + (x3 * x2) + (x4 * x3) + (x5 * x4) + (x6 * x5)))

#' @export test1
#' @export test2
#' @export test3
#' @export test4
#' @export test5
#' @export test6
