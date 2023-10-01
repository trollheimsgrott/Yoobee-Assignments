#include <iostream>
#include <string>
#include <iomanip>//introduces manipulator library to allow setprecision for decimal places etc
using namespace std;
int main()
{
	string nam; //introduce string for name input
	int num, uni;//introduce integer for cust. number and units consumed
	cout << "Auckland Power - Customer Bill Generator" << endl << endl;
	cout << "*************************************************************" << endl << endl;
	cout << "Enter Customer Name : ";
	cin >> nam;//input section for user data
	cout << "Enter Customer Number : ";
	cin >> num;//input section for user data
	cout << "Enter Consumed Units : ";
	cin >> uni;//input section for user data
	cout << endl << "Auckland Power - Customer Bill" << endl << endl;
	cout << "*************************************************************" << endl << endl;

	cout << "Customer Name : " << nam << endl;//beginning of cust. bill, reprint user data from input 
	cout << "Customer Number : " << num << endl;
	cout << "Units Consumed : " << uni << endl;

	float amount = 0.0;

	for (int i = uni; i > 0; i--) {//for loop to define how the user will be charged for power, at various rates
		if (i > 300) {
			amount++;
		}
		else if (uni > 200) {
			amount += 0.8;
		}
		else if (uni > 100) {
			amount += 0.5;
		}
		else {
			amount += 0.3;
		}
	}
	cout << endl << "Amount : " << fixed << setprecision(2) << amount << endl;//end statement of total charge
	cout << "*************************************************************";
	return 0;
}