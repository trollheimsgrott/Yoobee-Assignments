#include <iostream>
#include <fstream>
#include <string>
#include <vector>
#include <string.h>
#include <sstream>

using std::cout;
using std::cin;
using std::string;
using std::ios;
using std::fstream;


int writeTxt(string filename, int assignedID) {  // To be called after ID has been assigned, will increment existing ID by one so it's ready to be assigned the next time readTxt is called
	int newID = assignedID + 1;
	fstream newfile;
	newfile.open(filename, ios::out); //open a file to perform read operation using file object
	if (newfile.is_open()) { //checking whether the file is open 
		newfile << newID;//inserting text
		newfile.close(); //close the file object
	}
	return newID;
}

int readTxt(string filename) {   // Reads ID number ready to be assigned
	string txtID;
	fstream newfile;
	int assignedID = 0;
	newfile.open(filename, ios::in);  // Opens file and finds current ID to be assigned
	if (newfile.is_open()) {
		getline(newfile, txtID);
		assignedID = stoi(txtID);
		newfile.close();
	}
	writeTxt(filename, assignedID);
	return assignedID;
}

void writeCsv(string filename, string incomingData) { // Called within other functions, takes incoming data as a string and writes it to CSV.
	std::ofstream file;
	file.open(filename, std::ios::app);
	file << "\n" << incomingData;
	file.close();
}

string getID(string csvString) {
	int index = csvString.find_first_of(",");
	string ID = csvString.substr(0, index);
	return ID;
}

string readCSV(string filename, string uniqueID) {  // Searches CSV for ID to return correct line of
	std::ifstream file;
	bool idNotFound = true;
	string data = "none";

	file.open(filename, std::ios::in);
	if (file.is_open()) {
		string currentLine;
		while (getline(file, currentLine) && idNotFound) {
			if (uniqueID == getID(currentLine)) {
				data = currentLine;
				idNotFound = false;
			}
		}
		file.close();
	}
	return data;
}

std::vector<std::string> CSVtoVector(string filename, string uniqueID) {
	string data = readCSV(filename, uniqueID);
	std::vector<std::string> vectorData;
	std::stringstream sstr(data);

	while (sstr.good())
	{
		std::string substr;
		getline(sstr, substr, ',');
		vectorData.push_back(substr);
	}

	return vectorData;
}