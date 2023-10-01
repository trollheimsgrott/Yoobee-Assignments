#pragma once
#include <iostream>
#include <string>

class Shapes {		//Shapes class

public:					//acess specifier
	double calculateArea();				//declaration of public function calculateArea in Shapes Class
	double calculatePerimeter();		//declaration of public function calculatePerimeter in Shapes Class

	Shapes();		 //Constructor
};

class Square :		//Square Derivative class
	public Shapes	//acess specifier
{
public:				//acess specifier
	double calculateArea(double side);		//declaration of public function calculateArea in Square Derivative Class
	double calculatePerimeter(double side);	//declaration of public function calculatePerimeter in Square Derivative Class
};


class Circle :		//Circle Derivative class
	public Shapes	//acess specifier
{
public:				//acess specifier
	double calculateArea(double radius);		//declaration of public function calculateArea in Circle Derivative Class
	double calculatePerimeter(double radius);	//declaration of public function calculatePerimeter in Circle Derivative Class
};


class Rectangle :		//Rectangle Derivative class
	public Shapes	//acess specifier
{
public:			//acess specifier
	double calculateArea(double width, double height);	//declaration of public function calculateArea in Rectangle Derivative Class
	double calculatePerimeter(double width, double height);//declaration of public function calculatePerimeter in Rectangle Derivative Class
};


class Triangle :		//Triangle Derivative class
	public Shapes	//acess specifier
{
public:			//acess specifier
	double calculateArea(double a, double b, double c);		//declaration of public function calculateArea in Triangle Derivative Class
	double calculatePerimeter(double a, double b, double c);//declaration of public function calculatePerimeter in Triangle Derivative Class
};


