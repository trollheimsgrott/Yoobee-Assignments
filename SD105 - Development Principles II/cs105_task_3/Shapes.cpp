#include <iostream>
#include "Shapes.h";
#include <math.h>

const double pi = 3.14159265359;		//defining pi for calculations of a circle

Shapes::Shapes() { }		//shapes declaration

double Shapes::calculateArea() {		//calculateArea function of class Shapes to be override by derivitave classes
	return 0;
}

double Shapes::calculatePerimeter() {		//calculatePerimeter function of class Shapes to be override by derivitave classes
	return 0;
}

double Rectangle::calculateArea(double height, double width) {		//Rectangle Class function calculateArea function with paramaters height, width
	double result = height * width;
	return result;
};


double Rectangle::calculatePerimeter(double height, double width) {//   rectangle class function calculatePerimeter with paramaters height, width
	double perimeter = (height * 2) + (width * 2);
	return perimeter;
};


double Circle::calculateArea(double radius) {		//Circle Class function calculateArea with paramater radius
	double result = pi * (radius * radius);
	return result;
};

double Circle::calculatePerimeter(double radius) {		//   Circle class function calculatePerimeter with paramater radius
	double perimeter = 2 * pi * radius;
	return perimeter;
};


double Triangle::calculatePerimeter(double a, double b, double c) {		//Triangle class function calculatePerimeter with paramaters a, b, c
	double perimeter = a + b + c;
	return perimeter;
};

double Triangle::calculateArea(double a, double b, double c) {		//Triangle class function calculateArea with paramaters a, b, c
	double s = (a + b + c) / 2;
	double area = sqrt(s * (s - a) * (s - b) * (s - c));
	return area;
};

double Square::calculateArea(double side) {		//Triangle class function calculateArea with paramater side
	double result = (side * side);
	return result;
};
	
double Square::calculatePerimeter(double side) {		//Triangle class function calculatePerimeter with paramater side
	double result = side * 4;
	return result;
};