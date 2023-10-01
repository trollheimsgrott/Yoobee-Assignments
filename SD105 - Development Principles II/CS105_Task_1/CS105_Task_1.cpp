#include <iostream>;



class Location {			   // The class
public:						   // Access specifier
	int degrees;			   // Attribute (int variable)
	float minutes;			   // Atttibute (float variable)
	char direction;			   // Attribute (char variable)
	void getPos();			   // Method/function declaration
	void display();
	Location() = default;       //default constructor
};


void Location::getPos() {       //user input degrees, minutes, direction
	std::cout << "Input degrees between 0 and 100:";
	std::cin >> degrees;
	std::cout << "Input minutes between 0 and 60:";
	std::cin >> minutes;
	std::cout << "Input direction (E/W/N/S) :";
	std::cin >> direction;
};
void Location::display() {

	std::cout << degrees << "\xF8" << minutes << " " << direction;
};

class Yacht {				 // The class
public:						 // Access specifier
	int serial;				 // Attribute (int variable)
	static int counter;      // Attribute (int variable)
	Location latitude;       // Attribute (Location Class variable)
	Location longitude;      // Attribute (Location Class variable)
	void getPos();			 // Method/function declaration
	void display();			 // Method/function declaration
	Yacht();
};



							 // Initialize static member of Yacht Class
int Yacht::counter = 1;

Yacht::Yacht() {             //Yacht Function incrementing the serial number of Yacht, with latitude and longitude type Location
	serial = counter;
	latitude = Location();
	longitude = Location();
	counter++;
};

void Yacht::getPos() {      //Yacht functions for user input latitude longitude
	latitude.getPos();
	longitude.getPos();

};

void Yacht::display() {     //Yacht function to print serial number, latitude, longitude
	std::cout << "The ships serial number is :" << serial << "\n" << "and its position is : ";
	latitude.display();
	std::cout << " Latitude ";
	longitude.display();
	std::cout << " Longitude" << "\n";

};







int main()					 //main program - menu, with input
{

	int a;
	std::cout << "*********************Ocean Race 2021 - 22 * ************************** \n\n";
	std::cout << "*********************************************************************** \n";
	Yacht yacht1 = Yacht();
	Yacht yacht2 = Yacht();
	Yacht yacht3 = Yacht();
	std::cout << "Enter the Location of the first ship: \n";
	yacht1.getPos();
	std::cout << "Enter the Location of the second ship: \n";
	yacht2.getPos();
	std::cout << "Enter the Location of the third ship: \n";
	yacht3.getPos();
	std::cout << "\n**************************Welcome to Ocean Race 2021-22**************************\n";
	yacht1.display();
	yacht2.display();
	yacht3.display();
	std::cout << "Press any key to end";
	std::cin >> a;

}