#include <iostream>
#include <vector>
using namespace std;

vector<string> hman = { // vector to display the start game hangman so that we dont define size of array
"  -------     ",
"  |     |     ",
"  |    \\o/   ",
"  |     |     ",
"  |    / \\   ",
"________      ",
};


vector<string> freeman = { // vector to display the winning game hangman with no walkman
"",
"              ",
"      \\o/    ",
"       |      ",
"      / \\    ",
"",
};

vector<string> deadman = {  // vector to display the game over hangman dead
"",
"  -------     ",
"  |     |     ",
"  |    /|\\   ",
"  |    /|\\   ",
"  |     o     ",
"________      ",
"",
};

vector<string> incorrect = { // vector to display the incorrect guess hangman beginning to be hung
"",
"  -------     ",
"  |     |     ",
"  |    \\o/   ",
"  |           ",
"  |           ",
"________      ",
"",
"",
};



void printLines(vector<string> lines) { // function introducing the vector string lines

    for (int i = 0; i < lines.size(); i++) { //display a vector with its size relative 
        cout << lines[i] << endl;
    }
}


void hangman(int guessCount) { // hangman recursive function to enter a guess, incrememnt the guess number and return back to guess until max guess is reached as defined in the if statements
    char guess;
    cin >> guess;
    guessCount++;

    if (guess == 'o') {
        cout << "That is Correct! The correct answer was o" << endl; //if statement user guesses correctly
        // print free man
        printLines(freeman);

    }
    else {
        if (guessCount == 3) {  //if statement user is out of guesses
            cout << "Sorry, you are out of guesses - game over" << endl;
            printLines(deadman);
            // print dead man
            return;
        }

        cout << "Incorrect! Try again: " ; ////if statement user guesses incorrectly
        printLines(incorrect);
        return hangman(guessCount);
    }
}

int main()
{
    cout << "Play hangman by checking the spelling of the word. If the user guesses correctly, the hangman becomes Walkman else an inverted man. You can allow up to 3 guesses." << endl; //instructions for game with the start game hangman vector, more instructions below
    printLines(hman); 
    cout << endl;
    cout << endl;
    cout << "Solve the Hangman by guessing the missing letter in 3 attempts or less:  YO_BEE" << endl;
    cout << "Write the missing letter: ";
    hangman(0); // run the hangman recursive function
}