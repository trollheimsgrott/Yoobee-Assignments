#pragma once
#include <string>

enum Race { HUMAN = 1, ELF = 2, DWARF = 3, ORC = 4, TROLL = 5 };		//Race enum initilization

class Player {			//Player class with private and public data members as follows
private:
	std::string name;
	Race race;
	int hitPoints;
	int magicPoints;

public:
	std::string attack();
	std::string getName();
	std::string whatRace();
	Race getRace();
	int getHitPoints();
	int getMagicPoints();

	void setName(std::string value);			//public Race functions void which return value (setters)
	void setRace(Race value);
	void setHitPoints(int value);
	void setMagicPoints(int value);
	Player(std::string name, Race race, int hitPoints, int magicPoints);		//Player declaration
};

