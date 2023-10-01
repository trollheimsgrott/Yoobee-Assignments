#include <iostream>  // main header file allowing the use of cout and cin etc
using namespace std; // library of standard members to be used
int main()
{

	int start, final; // introduce two integers for the user to use
	begin: //gives a point in the code that can be executed / returned to once a condition is met
	cout << "Enter starting number: ";//asking for inputs from the user
	cin >> start;
	cout << endl;
	cout << "Enter final number: ";
	cin >> final;
	cout << endl;
	if (start >= final) {
		cout << "Your initial integer is required to be smaller than your second integer. Please try again." << endl;//let user know the operation is "illegal" try again
		goto begin;//if code gets to this check, revert to begin and run trial again
	}
	cout << "Numbers divisible by 7 from " << start << " to " << final << endl//states that we will find numbers divisble by 7 between the inputted numbers
	<< "**********************************************************" << endl;

	for (int c = start; c <= final; c++) {//this for loop runs until it gets to final number given by user, and finds all numbers divisible by 7
		if (c % 7 == 0) {
			cout << c << " ";
		}
	}
	cout << endl << endl; 
	cout << "Prime Numbers " << start << " to " << final << endl
		<< "**********************************************************" << endl;
	//optimusprime = number of prime numbers listed
	int optimusprime = 0;
	for (int c = start; c <= final; c++) {//the below for loops and bool define how to handle various conditions until program breaks or completes.
		if (c == 1 || 0) {
			continue;
		}
		bool isprime = true;
		for (int d = 2; d <= c / 2; ++d) {
			if (c % d == 0) {
				isprime = false;
				break;
			}
		}
			if (isprime) {
				cout << c << " ";
				optimusprime++;
			}
	}
	cout << endl << endl << "Total number of prime numbers from " << start << " to " << final << ": " << endl << "**********************************************************" << endl << optimusprime; //makes a statement of total number of prime numbers found
	return 0;

}