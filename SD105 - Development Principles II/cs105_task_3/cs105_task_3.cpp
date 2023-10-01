#include <iostream>
#include <vector>
#include "Shapes.h";

void mainMenu();
void squareMenu();
void rectangleMenu();
void circleMenu();
void triangleMenu();

void printShapes(std::vector<std::string> lines) { // function for printing the vector string lines

	for (int i = 0; i < lines.size(); i++) { //display a vector with its size relative 
		std::cout << lines[i] << std::endl;
	}
}



std::vector<std::string> square = { // vector to display a square
"",
"   ________   ",
"  |        |  ",
"  |        |  ",
"  |        |  ",
"  |________|  ",
"",

};


std::vector<std::string> triangle = { // vector to display a triangle
"",
"      /\\        ",
"     /  \\       ",
"    /    \\      ",
"   /      \\     ",
"  /________\\    ",
"",
};

std::vector<std::string> rectangle = { // vector to display a triangle
"",
"   ________________   ",
"  |                |  ",
"  |                |  ",
"  |                |  ",
"  |________________|  ",
"",
};


std::vector<std::string> circle = { // vector to display a triangle
"",
"     _  -  _    ",
"   -         -  ",
"  -           - ",
"  -           - ",
"   -         -  ",
"     -  _  -    ",
"",
};


void squareMenu() { //	Menu function for the square submenu for taking input and calculating area and perimeter of a square
	Square squareopt;
	double side;
	int menu;

	std::cout << "\n\n*******************\nSquare Calculator\n\n*******************\n";
	printShapes(square);
	std::cout << "\n1. Area (Area = base * base sq. units)\n";
	std::cout << "2. Perimeter (Perimeter = 4 * base sq. units)\n";
	std::cout << "3. Go back to main menu (Shapes Calculator)\n\n";
	std::cin >> menu;
	switch (menu) {		//square submenu switch 
	case 1:
		std::cout << "Please enter the side of the square in centimeters:\n";
		std::cin >> side;

		std::cout << "The result is:\n";
		std::cout << squareopt.calculateArea(side) << " square centimeters (sq. cm)";
		std::cout << "\n";
		break;
	case 2:
		std::cout << "Please enter the side of the square in centimeters:\n";
		std::cin >> side;
		std::cout << "The result is:\n";
		std::cout << squareopt.calculatePerimeter(side) << "cm Perimeter";
		std::cout << "\n";
		break;
	case 3:
		mainMenu();
		return;
	default:
		squareMenu();
		break;
	}
	squareMenu();
}

void rectangleMenu() { //	Menu function for the rectangle submenu for taking input and calculating area and perimeter of a rectangle
	Rectangle retangleopt;
	double width, height;
	int menu;

	std::cout << "\n\n*******************\nRectangle Calculator\n\n*******************\n";
	printShapes(rectangle);
	std::cout << "\n1. Area (Area = base * base sq. units)\n";
	std::cout << "2. Perimeter (Perimeter = 4 * base sq. units)\n";
	std::cout << "3. Go back to main menu (Shapes Calculator)\n\n";
	std::cin >> menu;
	switch (menu) {		//rectangle submenu switch 
	case 1:
		std::cout << "Please enter the base in centimeters:\n";
		std::cin >> width;
		std::cout << "\n";
		std::cout << "Please enter the height in centimeters:\n";
		std::cin >> height;
		std::cout << "The result is:\n";
		std::cout << retangleopt.calculateArea(width, height) << " square centimeters (sq. cm)";
		std::cout << "\n";
		break;
	case 2:
		std::cout << "Please enter the base in centimeters:\n";
		std::cin >> width;
		std::cout << "\n";
		std::cout << "Please enter the height in centimeters:\n";
		std::cin >> height;
		std::cout << "The result is:\n";
		std::cout << retangleopt.calculatePerimeter(width, height) << " cm Perimeter";
		std::cout << "\n";
		break;
	case 3:
		mainMenu();
		return;
	default:
		rectangleMenu();
		break;
	}
	rectangleMenu();
}
void circleMenu() { //	Menu function for the circle submenu for taking input and calculating area and perimeter of a circle
	Circle circleopt;
	double radius;
	int menu;

	std::cout << "\n\n*******************\nCircle Calculator\n\n*******************\n";
	printShapes(circle);
	std::cout << "\n1. Area (Area = base * base sq. units)\n";
	std::cout << "2. Circumference (Circumference = 4 * base sq. units)\n";
	std::cout << "3. Go back to main menu (Shapes Calculator)\n\n";
	std::cin >> menu;
	switch (menu) {		//circle submenu switch 
	case 1:
		std::cout << "Please enter the radius of the circle in centimeters:\n";
		std::cin >> radius;

		std::cout << "The result is:\n";
		std::cout << circleopt.calculateArea(radius) << " square centimeters (sq. cm)";
		std::cout << "\n";
		break;
	case 2:
		std::cout << "Please enter the radius of the circle in centimeters:\n";
		std::cin >> radius;
		std::cout << "The result is:\n";
		std::cout << circleopt.calculatePerimeter(radius) << " cm Circumference";
		std::cout << "\n";
		break;
	case 3:
		mainMenu();
		return;
	default:
		circleMenu();
		break;
	}
	circleMenu();
}
void triangleMenu() { //	Menu function for the triangle submenu for taking input and calculating area and perimeter of a triangle
	Triangle triangleopt;
	double a;
	double b;
	double c;
	int menu;

	std::cout << "\n\n*******************\nTriangle Calculator\n\n*******************\n";
	printShapes(triangle);
	std::cout << "\n1. Area (Area = base * base sq. units)\n";
	std::cout << "2. Perimeter (Perimeter = 4 * base sq. units)\n";
	std::cout << "3. Go back to main menu (Shapes Calculator)\n\n";
	std::cin >> menu;
	switch (menu) {		//triangle submenu switch 
	case 1:
		std::cout << "Please enter the length of side 1:\n";
		std::cin >> a;
		std::cout << "Please enter the length of side 2:\n";
		std::cin >> b;
		std::cout << "Please enter the length of side 3:\n";
		std::cin >> c;
		std::cout << "The result is:\n";
		std::cout << triangleopt.calculateArea(a, b, c) << " square centimeters (sq. cm)";
		std::cout << "\n";
		break;
	case 2:
		std::cout << "Please enter the length of side 1:\n";
		std::cin >> a;
		std::cout << "Please enter the length of side 2:\n";
		std::cin >> b;
		std::cout << "Please enter the length of side 3:\n";
		std::cin >> c;
		std::cout << "The result is:\n";
		std::cout << triangleopt.calculatePerimeter(a, b, c) << " cm Perimeter";
		std::cout << "\n";
		break;
	case 3:
		mainMenu();
		return;
	default:
		triangleMenu();
		break;
	}
	triangleMenu();
}

void mainMenu() { //	Main Menu function for taking input from user, with switch to take user to the appropriate submenu
	int menu;

	std::cout << "*******************\n";
	std::cout << "Shapes Calculator\n\n";
	std::cout << "*******************\n\n";
	std::cout << "1. Square\n";
	std::cout << "2. Rectangle\n";
	std::cout << "3. Triangle\n";
	std::cout << "4. Circle\n";
	std::cout << "5. Exit\n\n";
	std::cout << "Please Choose your option between 1 and 5:";
	std::cin >> menu;

	switch (menu) {		//main menu switch for submenu choice
	case 1:
		squareMenu();
		break;
	case 2:
		rectangleMenu();
		break;
	case 3:
		triangleMenu();
		break;
	case 4:
		circleMenu();
		break;
	case 5:
		return;
	default:
		mainMenu();
	}
}


int main()
{
	mainMenu();		//calling the main menu inside the main to start the program
}