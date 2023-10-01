#pragma once
#include "Player.h"
#include <string>

// Derived class mage from Player Class with data members name; string and race; Race
class Mage : public Player {
public:
	Mage(std::string name, Race race);
	std::string attack();
private:
};

std::string Mage::attack() {				//attack(); of mage derived class to overide Player class attack();
	return "I will crush you with my arcane missiles!";
}

Mage::Mage(std::string name, Race race) : Player(name, race, 200, 0) {			//mage constructor
}