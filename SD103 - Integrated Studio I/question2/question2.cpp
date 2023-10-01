#include <iostream>
using namespace std;


    int arraytot(int* array, int size) { //initilize array arraytot with int size
    int total = 0;
    for (int i = 0; i < size; i++) {  //for loop with if statement to check if the integer is a negative number
        if (array[i] > 0) {
           total += array[i]; //calculate sum of positive numbers
        }
    }
    return total; //return the total
}

    int main() {

        cout << "Write a program to sum the non-negative values in the list. Pass an array to the function using a pointer and return the sum. Allow the user to feed list elements. (Hint: Function arguments could be the array pointer and the size of the array)" << endl;
        cout << endl;
        cout << endl;
    int size = 0; // initilize size
    cout << "Please select how many numbers you would like to add together. The program will not calculate negative numbers into the equation." << endl;
    cin >> size; //take user input for array size.
    int* array = new int[size]; //store user input as new int size


    for (int i = 0; i < size; i++) { //Loop that allows user to enter numbers of their choosing.
        cout << "Enter a number: ";
        cin >> array[i]; //store integers to the array
    }

    int total= arraytot(array, size); 
    cout << "The sum of the positive numbers only is: " << total; // print total of all positive numbers only.
    delete[] array; //free up memory from array
    return 0;
}