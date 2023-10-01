#pragma once
#include "Player.h"
#include <string>

// Derived class Priestr from Player Class with data members name; string and race; Race
class Priest : public Player {
public:
	Priest(std::string name, Race race);
	std::string attack();
private:
};

std::string Priest::attack() {			//attack(); of priest derived class to overide Player class attack();
	return "I will assault you with holy wrath!";
}


Priest::Priest(std::string name, Race race) : Player(name, race, 100, 200) {			//priest constructor
}