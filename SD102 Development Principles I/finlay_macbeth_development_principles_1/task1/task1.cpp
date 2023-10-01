#include <iostream>
#include <cmath> //allows use of square root and other math functions from the library
using namespace std; //
int main()
{

int a, b, c;  //introduces three variables to be used by the user
float x1, x2; //introduces two numbers which will be calculated for the user
cout << "Enter a , b , c ";
cin >> a >> b >> c;
cout << endl;
int expression = b*b - 4 * a * c; //introduces an expression to be checked for rule

if (expression < 0) { // for loop allowing the user to input data and receive appropriate feedback.
	cout << "the roots are imaginary" << endl << endl;
}
else if (expression == 0) { 
cout << "the roots are real and equal" << endl << endl;
}
else {
cout << "the roots are Real and unequal" << endl << endl;
}
x1 = (-b + sqrt((b*b) - (4 * a * c))) / (2 * a); //defines how the two numbers will be calculated for the user
x2 = (-b - sqrt((b*b) - (4 * a * c))) / (2 * a);

cout << "x1 = " << x1 << "; x2 = "  << x2; //displays the two calculated numbers fot the user
return 0;
}


