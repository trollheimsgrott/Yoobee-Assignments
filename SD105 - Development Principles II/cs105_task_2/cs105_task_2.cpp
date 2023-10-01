#include <iostream>;
#include "Player.h"
#include "Warrior.h"
#include "Priest.h"
#include "Mage.h"
#include <vector>
#include <string>


std::vector<Warrior> warriors = {}; //Warrior vector

void addNewWarrior(std::string name, Race race) { //Warrior function to store user input name, race
	Warrior warrior = Warrior(name, race);
	warriors.push_back(warrior);
};


std::vector<Priest> priests = {};    //Priest vector

void addNewPriest(std::string name, Race race) {     //Priest function to store user input name, race
	Priest priest = Priest(name, race);
	priests.push_back(priest);
};

std::vector<Mage> mages = {};    //Mage vector

void addNewMage(std::string name, Race race) {     //Mage function to store user input name, race
	Mage mage = Mage(name, race);
	mages.push_back(mage);
};


int main()		//Main Program - Menu with cin, cout printing values
{

	int character;
	int raceint;
	Race race;
	std::string name{};
	std::cout << "\n\nCHARACTER CREATION\n\nWhich of the following would you like?\n\n1. Create a Warrior!\n2. Create a Priest!\n3. Create a Mage!\n4. Finish creating player characters!\n\n";
	std::cin >> character;
	while (character != 4) {			//while  loop to set the player race pass user input variable to enum
		std::cout << "\nWHICH RACE DO YOU WANT?\n\n1. Human!\n2. Elf!\n3. Dwarf!\n4. Orc!\n5. Troll!\n\n";
		std::cin >> raceint;
		if (raceint == 1) {
			race = HUMAN;
		}
		if (raceint == 2) {
			race = ELF;
		}
		if (raceint == 3) {
			race = DWARF;
		}
		if (raceint == 4) {
			race = ORC;
		}
		if (raceint == 5) {
			race = TROLL;
		}
		std::cout << "\nWHAT WOULD YOU LIKE TO NAME YOUR CHARACTER?\n\n";
		std::cin >> name;

		if (character == 1) {			//creating new warrior from variables name, race
			addNewWarrior(name, race);
		}
		if (character == 2) {			//creating new priest from variables name, race
			addNewPriest(name, race);
		}
		if (character == 3) {			//creating new mage from variables name, race
			addNewMage(name, race);
		}
		std::cout << "\n\nCHARACTER CREATION\n\nWhich of the following would you like?\n\n1. Create a Warrior!\n2. Create a Priest!\n3. Create a Mage!\n4. Finish creating player characters!\n\n";
		std::cin >> character;
	}
	std::cout << "\n--------------------\nWARRIORS LIST:\n--------------------\n\n";			//printing results
	for (Warrior warrior : warriors) {
		std::cout << "I am a warrior with name " << warrior.getName() << " and with race " << warrior.whatRace() << " and my attack is : " << warrior.attack() << "\nI have " << warrior.getHitPoints() << " Hitpoints and " << warrior.getMagicPoints() << " Magic Points\n\n";
	}
	std::cout << "\n--------------------\nPRIESTS LIST:\n--------------------\n\n";
	for (Priest priest : priests) {
		std::cout << "I am a Priest with name " << priest.getName() << " and with race " << priest.whatRace() << " and my attack is : " << priest.attack() << "\nI have " << priest.getHitPoints() << " Hitpoints and " << priest.getMagicPoints() << " Magic Points\n\n";
	}
	std::cout << "\n--------------------\nMAGES LIST:\n--------------------\n\n";
	for (Mage mage : mages) {
		std::cout << "I am a Mage with name " << mage.getName() << " and with race " << mage.whatRace() << " and my attack is : " << mage.attack() << "\nI have " << mage.getHitPoints() << " Hitpoints and " << mage.getMagicPoints() << " Magic Points\n\n";
	}

}