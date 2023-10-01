#include "Player.h"
#include <string>;

std::string Player::attack() {		//default attack to be override with race attacks();
	return "No attack method defined yet!";
}

std::string Player::getName() {		//return player name from input function
	return name;
}

Race Player::getRace() {
	return race;
}

std::string Player::whatRace() {		//switch statement to pass enum race to const char string for printing
	if (race == HUMAN) { return "HUMAN"; }
	if (race == ELF) { return "ELF"; }
	if (race == DWARF) { return "DWARF"; }
	if (race == ORC) { return "ORC"; }
	if (race == TROLL) { return "TROLL"; }
}

int Player::getHitPoints() {		//return hitpoints getter
	return hitPoints;
}

int Player::getMagicPoints() {		//return magicpoints getter
	return magicPoints;
}

void Player::setName(std::string value) {		//name setter
	name = value;
}

void Player::setRace(Race value) {		//race name setter
	race = value;
}
void Player::setHitPoints(int value) {		//hitpoints setter
	hitPoints = value;
}

void Player::setMagicPoints(int value) {		//magicpoints setter
	magicPoints = value;
}

Player::Player(std::string n, Race r, int h, int m) {	//Player::Player Declaration
	name = n;
	race = r;
	hitPoints = h;
	magicPoints = m;
}