# TMath [![Build status](https://travis-ci.org/mooxmirror/tmath.svg)](https://travis-ci.org/mooxmirror/tmath)
A small math function collection based on the Taylor expansion series.

## Building the project
- Download the source files from the `master`-tree
- To build the project, you need to have `clang` and `make` installed
- If everything is ready, run `make all` and ...
- ... your `libtmath.a` library file is ready in the `build` folder

## How to use
Just build it as described above, include the header files and link the library.
The library uses the types `TMath::DOUBLE`(`long double`) and `TMath::LONG`(`long long`) for parameters and return values.

## What is included?

Function     | Description
------------ | -----------------------------------
`sin(x)`     | sine of x
`asin(x)`    | arcsine of x
`sinh(x)`    | hyperbolic sine of x
`cos(x)`     | cosine of x
`acos(x)`    | arccosine of x
`cosh(x)`    | hyperbolic cosine of x
`tan(x)`     | tangent of x
`atan(x)`    | arctangent of x
`cot(x)`     | cotangent of x
`acot(x)`    | arccotangent of x
`coth(x)`    | hyperbolic cotangent of x
`sec(x)`     | secant of x
`asec(x)`    | arcsecant of x
`sech(x)`    | hyperbolic secant of x
`cosec(x)`   | cosecant of x
`acsc(x)`    | arccosecant of x
`csch(x)`    | hyperbolic cosecant of x
`floor(x)`   | next lower integer of x
`ceil(x)`    | next higher integer of x
`mod(x, y)`  | the remainder of the division x / y
`exp(x)`     | natural exponential function
`sqrt(x)`    | squareroot of x
`root(x, n)` | n-th root of x
`ln(x)`      | natural logarithm of x
`lg(x)`      | common logarithm of x
`lb(x)`      | binary logarithm of x
`log(n, x)`  | logarithm with base n of x
`pow(x, n)`  | x to the power of n
`fac(n)`     | factorial of n
`rad(x)`     | degrees to radiant
`deg(x)`     | radiant to degrees

## What is planned?
- Statistics
- Vectors
- Matrices
- Vector operations
- Matrix operations
