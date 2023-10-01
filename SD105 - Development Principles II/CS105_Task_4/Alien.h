#pragma once
class Alien		//alien class
{
public:			//public access identifier
		Alien(int weight, int height, char gender);		// alien function with paramaters weight height char
		int getWeight() const;			// getWeight function
		int hetHeight() const;			// getHeight function
		char getGender() const;			// getGender function
		int getPrestige() const;			// getPrestige function
private:	
	int weight;		//private data member variables weight, height, gender
	int height;
	char gender;
};

