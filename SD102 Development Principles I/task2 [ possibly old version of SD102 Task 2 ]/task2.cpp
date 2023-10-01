#include <iostream>
using namespace std;
int main()
{

	int start, final;
	cout << "Enter starting number: ";
	cin >> start;
	cout << endl;
	cout << "Enter final number: ";
	cin >> final;
	cout << endl;
	cout << "Numbers divisible by 7 from " << start << " to " << final;
	for (int c = start; c <= final; c++) {
		if (c % 7 == 0) { cout << c };
	}
	return 0;
}


