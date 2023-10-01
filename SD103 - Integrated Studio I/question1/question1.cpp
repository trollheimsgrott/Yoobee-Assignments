

#include<iostream>
using namespace std;

enum Position { // define Enum named Position with values goalkeeper = 0, (by default) midfielder = 2, and so on.
	goalkeeper,
	midfielder,
	striker,
	winger,
	defender
};
struct Soccer {  //define structure named Soccer with variables number, mph and pos, of types int, float (for double/decimal), and type Enum (pos)
	int pnum;
	float tspeed;
	Position pos;

};


string enumString(Position pn) {  //string EnumString which ties Position Enum to switch "input"


	switch (pn) {
	case goalkeeper: return "goalkeeper"; //ie in case of enumString goalkeeper return Position Enum goalkeeper. although it doesnt look like it, it helps to tie the user input g to goalkeeper.
	case midfielder: return "midfielder";
	case striker: return "striker";
	case winger: return "winger";
	case defender: return "defender";
	default: return "unknown";
	}

}


Position position() {  // A new member of the Position Enum is initilized as "position" with the variable "PlayPos" type string,and crucially gives the cin to PlayPos when "position" is called on in the main
	string playPos;
	cin >> playPos;

	if (playPos == "g") return goalkeeper; //when the user inputs the cin player1.pos the player1 variable is called on from Soccer struct, and is combined with the Position Enum variable pos, then the program is told this is equal to Position position enum, which has the string type PlayPos, and the cin for PlayPos, next function the string posPlay1 is initilized and told that is equal to enumString(player1.pos which is tieing our now full length word back to the original user input letter.
	if (playPos == "m") return midfielder;
	if (playPos == "s") return striker;
	if (playPos == "w") return winger;
	if (playPos == "d") return defender;
	else {
		cout << "The character specified can not be used for a player position, please try again\n";   //This section handles what to do if the user inputs an "illegal" character or characters and asks the user to input again. 
		cout << "Please enter player position: ";
		return position();
	}
}

int main()
{

	cout << "Create a structure called soccer that contains two members : a player number(type int) and the player's top speed (in mph, type float). Add a variable of type enum position with values that indicate a player's position type : goalkeeper, midfielder, striker, wingerand defender.Write a program so that the user enters three items of information for each of two players : a player number, the player's top speed and the player's position type. For player’s position type, allow user to specify a type by entering its first letter(‘g’, ’m’, ’s’, ’w’, and so on) then stores the type chosen as a value of a variable of type enum position, and finally displays the complete word for this type. The program should store this information in two variables of type players, and then display their contents." << endl;
	cout << endl;
	cout << endl;
	Soccer player1{};  // Structure Soccer, player 1 variable intitiilized
	Soccer player2{}; // Structure Soccer, player 2 variable intitiilized

	cout << "Player 1:" << endl;
	cout << "Please enter player number: ";
	cin >> player1.pnum; //stores user input to player 1.pnum enum
	cout << "Please enter player top speed in mph to one decimal point: (ie 15.1): ";
	cin >> player1.tspeed; //stores user input to player 1.tspeed enum
	cout << "Please enter player position: ";



	player1.pos = position(); //function to send user input to the enum Position position type for player 1



	string posPlay1 = enumString(player1.pos);  //string PosPlay1 which sets the enumString player1.pos as equal to player1.pos user input

	cout << endl;
	cout << endl;
	cout << "Player 2:" << endl;
	cout << "Please enter player number: ";
	cin >> player2.pnum;//stores user input to player 2.pnum enum
	cout << "Please enter player top speed in mph to one decimal point: (ie 15.1): ";
	cin >> player2.tspeed;//stores user input to player 2.tspeed enum
	cout << "Please enter player position: ";



	player2.pos = position();  //function to send user input to the enum Position position type for player 2
	string posPlay2 = enumString(player2.pos);//string PosPlay2 which sets the enumString player2.pos as equal to player2.pos user input
	cout << endl;
	cout << endl;
	cout << "Task Complete...Results as Follows: " << endl;
	cout << endl;
	cout << "Player 1:" << endl;
	cout << "Number = " << player1.pnum << endl;// prints the player 1 number to screen
	cout << "Top Speed = " << player1.tspeed << endl; // prints the player 1 tspeed to screen
	cout << "Position = " << posPlay1 << endl; // prints the final player 1 position type to screen as a full word.
	cout << endl;
	cout << endl;
	cout << "Player 2:" << endl;
	cout << "Number = " << player2.pnum << endl;// prints the player 2 number to screen
	cout << "Top Speed = " << player2.tspeed << endl;// prints the player 1 number to screen
	cout << "Position = " << posPlay2 << endl; // prints the final player 2 position type to screen as a full word.
	return 0;
}


