#include<iostream>
using namespace std;


int main() {
    int matA[3][3]{}, matB[3][3]{}, i{}, j{}, matC[3][3]{}, matD[3][3]{}; // initilizing matrix A, B, C and D
    cout << "Write a program to add two 3x3 matrices called A and B and store the resultant into matrix C. Multiply the resultant matrix C by 3 and display the result. Assign the values to the A and B matrixes during the declaration. Display the output structure." << endl;

    cout << endl;
    cout << "Please enter individual parts of Matrix A: " << endl; // for loop in a for loop which allows the user to enter integers used for Matrix A
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 3; j++)
            cin >> matA[i][j];
    }
    cout << endl;
    cout << endl;
    cout << "Please enter individual parts of Matrix B: " << endl;// for loop in a for loop which allows the user to enter integers used for Matrix B
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 3; j++)
            cin >> matB[i][j];
    }


    for (i = 0; i < 3; i++) // for loop in a for loop which defines Matrix C as Matrix A + Matrix B
    {
        for (j = 0; j < 3; j++)
            matC[i][j] = matA[i][j] + matB[i][j];
    }
    cout << endl;
    cout << endl;
    cout << "Matrix A: " << endl; // for loop in a for loop which prints Matrix A in rows and columns
    for (i = 0; i < 3; i++)
    {
        cout << "[ ";
        for (j = 0; j < 3; j++)
            cout << matA[i][j] << " ";
        cout << "]" << endl;
    }
    cout << endl;
    cout << endl;
    cout << "Matrix B: " << endl; // for loop in a for loop which prints Matrix B in rows and columns
    for (i = 0; i < 3; i++)
    {
        cout << "[ ";
        for (j = 0; j < 3; j++)
            cout << matB[i][j] << " ";
       cout << "]" << endl;
    }
    cout << endl;
    cout << endl;
    cout << "\nAdding Matrix A and Matrix B...\n";
    cout << "Matrix C: " << endl;
    for (i = 0; i < 3; i++)
    {

        for (i = 0; i < 3; i++)

        {
            cout << "[ ";
            for (j = 0; j < 3; j++) // for loop inside the regular double for loop which prints out the previously defined matrix C from line 25,26.
                cout << matC[i][j] << " ";
            cout << "]" << endl;
        }
    }
    cout << endl;
    cout << endl;
    cout << "\nMultiply Matrix C by 3 and Display the Result\n";
    cout << "Matrix D == Matrix C Multiplied by 3: " << endl;

    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 3; j++) 
            matD[i][j] = matC[i][j] * 3;//declaring matrix D rows and columns to be equal to matrix C rows and columns *3
    }

    for (i = 0; i < 3; i++)
    {
        cout << "[ ";
        for (j = 0; j < 3; j++)
            cout << matD[i][j] << " "; //print matrix D, = matrix C * 3
        cout << "]" << endl;
    }

    return 0;
}