#include <iostream>
#include <cstdlib>//introduces the library allowing the use of s/rand functions
#include <ctime>//introduces the library for the use of the time function
using namespace std;
int main()
{
	srand(time(nullptr));//sets the seed for the srand function - this case time is used
	int min = 10, max = 20, fin = 6;//introduces a minimum, maximum and total results 
	int odd = 0, even = 0; //introduces a definition of odd and even to be checked
	cout << "Random numbers between " << min << " and " << max << endl;
	cout << "***************************************************************" << endl << endl;
	for (int i = 1; i <= 6; i++) {//for loop which will display 6 random integers between 0 and 20
		int n = (rand() % 9) + min + 1;
		cout << n;
		if (i != fin) {
			cout << ",";//adding a comma after each integer
		}
		else {
	    	cout << endl;//as above, except no comma at the last integer
		}
		
		if (n % 2 == 0) {//the following if else counts even and odd integers
			even++;
		}
		else {
			odd++;
		}
	}
	cout << "Number of even numbers in the list: " << even << endl;//the following two lines displays the even and odd integer count
	cout << "Number of odd numbers in the list: " << odd << endl;
}