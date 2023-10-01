#include <iostream>
#include <vector>
using namespace std;

/*enum MenuPos {
    play,
    finalscore,
    quit,
};

int enumInt(MenuPos menu) { 


    switch (menu) {
    case play: return " Play"; //ie in case of enumString goalkeeper return Position Enum goalkeeper. although it doesnt look like it, it helps to tie the user input g to goalkeeper.
    case finalscore: return " Final Score";
    case quit: return 0;
    default: return "unknown";
    }

}

MenuPos menupos() {
    int Menuopt;
    cin >> Menuopt;

    if (Menuopt == "1") return play;
    if (Menuopt == "2") return finalscore;
    if (Menuopt == "3") return quit;
    else {
        cout << "The character specified can not be used for the context menu, please try again" << endl;   //This section handles what to do if the user inputs an "illegal" character or characters and asks the user to input again. 
        cout << "Please enter menu option: ";
        return menupos();
    }
}*/


void printLines(vector<string> lines) { // function introducing the vector string lines

    for (int i = 0; i < lines.size(); i++) { //display a vector with its size relative 
        cout << lines[i] << endl;
    }
}



vector<string> square = { // vector to display a square
"",
"   ________   ",
"  |        |  ",
"  |        |  ",
"  |        |  ",
"  |________|  ",
"",

};


vector<string> triangle ={ // vector to display a triangle
"",
"      /\\        ",
"     /  \\       ",
"    /    \\      ",
"   /      \\     ",
"  /________\\    ",
"",
};


     int mainMenu() {
         int choice{};

         cout << "1 Play" << endl;
         cout << "2 Final Score" << endl;
         cout << "3 Exit" << endl;
         cout << endl;

     start:
         cin >> choice;

         switch (choice) {
         case 1: return 1;
         case 2: return 2;
         case 3: return 3;
         default: cout << "Try again.";
             goto start;
             break;
         }
     }

     int Play() {
         char guess{};
         int choice{};
     start:
         cout << "1 Square" << endl;
         cout << "2 Triangle" << endl;
         cout << "3 Exit" << endl;
         cout << endl;


         cin >> choice;

         switch (choice) {
         case 1:  printLines(square);
             cout << "What shape is this? " << endl;
             cout << "a. Rectangle" << endl;
             cout << "b. Triangle" << endl;
             cout << "c. Square" << endl;
             cout << "d. None of the Above" << endl;
                 cin >> guess;
                    
                 return 0;
         case 2:  printLines(triangle);
             cout << "What shape is this? " << endl;
             cout << "a. Rectangle" << endl;
             cout << "b. Triangle" << endl;
             cout << "c. Square" << endl;
             cout << "d. None of the Above" << endl;
             cin >> guess;
             return 0;
         case 3: return 0;
         default: cout << "Try again.";
             goto start;
             break;
         }
     }

     int FinalScore() {
         int choice{};
         int score = 10;
     start:
         cout << "Your Final Score Was: " << endl;
         cout << score << endl;
         cout << "1 Exit" << endl;
         cin >> choice;
         cout << endl;

         switch (choice) {
         case 1:  



         return 0;
         case 2: return 0;
         case 3: return 0;
         default: return 0;
             break;
         }
     }

int main() {
    int option{};

    cout << "Write a game for children. The game is called “Identify the Shapes”. Use functions to generate shapes." << endl;
    cout << endl;
    cout << "• Define functions for a square& triangle without any argumentand without return type" << endl;
    cout << "• Define another function called rectangle with arguments and without return type.Pass height and width as arguments to the function." << endl;
    cout << "• Define one more function called calculate score with argument and with the return value.For each right answer, increment the score by 10. Return the score to the calling place." << endl;
    cout << "• Display Main Menu with Play, Final Scoreand Exit" << endl;
    cout << endl;
    cout << "• Play option should call any one of shapes randomly and display it.Provide options to the user as follows, (Hint: use random generator to choose the shape)" << endl;
    cout << endl;
    cout << "a.Rectangle" << endl;
    cout << "b.Triangle" << endl;
    cout << "c.Square" << endl;
    cout << "d.None of the above" << endl;
    cout << endl;
    cout << endl;


    int choice;
start:
    choice = mainMenu();
    switch (choice) {
    case 1: Play();
          break;
    case 2: FinalScore();
        break;
    case 3: return 0;
        break;
    case 4:  return 0;
    default: break;
    }
    return 0;
}




