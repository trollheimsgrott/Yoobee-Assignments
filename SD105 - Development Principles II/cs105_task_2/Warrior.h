#pragma once
#include "Player.h"
#include <string>

// Derived class Warrior from Player Class with data members name; string and race; Race
class Warrior : public Player {
public:
	Warrior(std::string name, Race race);
	std::string attack();
private:
};

std::string Warrior::attack() {				//attack(); of warrior derived class to overide Player class attack();
	return "I will destroy you with my sword!";
}

Warrior::Warrior(std::string name, Race race) : Player(name, race, 200, 0) {		//warrior constructor
}