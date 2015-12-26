double (^multiplyTwoValues)(double, double) = 
    ^(double firstValue, double secondValue) {
	    return firstValue * secondValue;
    };
double result = multiplyTwoValues(2,4); 
NSLog(@"The result is %f", result);
