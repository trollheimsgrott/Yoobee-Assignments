#include <iostream>
#include <fstream>
#include <string>
#include <cstring>
#include <vector>
#include <string.h>
#include <sstream>
#include <regex>
#include "header.h"

using std::string;
using std::vector;
using std::cin;
using std::cout;
using std::endl;

struct Customer customer;
//struct customer {
//    login userlogininfo;
//    string id;
//    string firstname,
//        lastname,
//        phone;
//    policy customerpolicyinfo;

string fetchClientNum() {
	int ID = readTxt("data/customer_id_counter.txt"); //readTxt returns int value so that math can be used.
	writeTxt("data/customer_id_counter.txt", ID);
	string stringID = std::to_string(ID); //int is converted back to string for return.
	return stringID;
}

bool isNumeric(std::string const& str) {
	return std::regex_match(str, std::regex("[(-|+)|][0-9]+"));
}

string checkPhone() { //checks that phone number contains no non-int characters
	bool validPhoneNum = false;
	string phoneNum;

	while (!validPhoneNum) {
		cout << "Phone number: ";
		cin >> phoneNum;
		if (isNumeric(phoneNum)) {
			return phoneNum;
		}
		else {
			cout << "Invalid phone number.\n";
		}
	}
}

void newCustomer() { //takes customer input and writes to csv. future builds might require this to return a Customer struct
	customer.ID = fetchClientNum();
	cout << "Your Customer ID number is: " << customer.ID << "\n";
	cout << "We advise you to write this down as you will need it to log in.\n";
	cout << "First Name: ";
	cin >> customer.firstName;
	cout << "Last name: ";
	cin >> customer.lastName;
	customer.phone = checkPhone();
	registerNewUser(customer.ID);
	newPolicy(customer.ID);
	string toCSV = customer.ID + "," + customer.firstName + "," + customer.lastName + "," + customer.phone;
	writeCsv("data/customer_data.csv", toCSV);
}

void printCustomer() {
	cout << "\n";
	cout << "   CUSTOMER INFORMATION FOR: " << customer.ID << "\n";
	cout << "   ---------------------------------- \n";
	cout << "   Name:   " << customer.firstName << " " << customer.lastName << "\n";
	cout << "   Email:  " << customer.userLoginInfo.email << "\n";
	cout << "   Phone:  " << customer.phone << "\n";
	cout << "   ---------------------------------- \n";

}

Customer loadCustomer(string filename, string ID) { //reads login info from csv and pushes into a Customer struct
	std::vector<std::string> dataVector = CSVtoVector(filename, ID);

	if (dataVector.size() == 1) {
		customer.ID = dataVector[0];
	}
	else {
		customer.ID = dataVector[0];
		customer.firstName = dataVector[1];
		customer.lastName = dataVector[2];
		customer.phone = dataVector[3];
	}

	return customer;
}

bool updateCsv(string filename, string uniqueID) { //reads original file and rewrites all info into a new temp file with user changes implemented.

	std::fstream fin, fout;
	//opens existing file
	fin.open(filename, std::ios::in);
	//creates new file to store updated info
	fout.open("data/updated_file_temp_name.csv", std::ios::out);

	if (!fin.is_open()) {
		cout << "Error reading file...";
		return false;
	}

	string updatedValue,
		line = "Null, file did not read",
		word,
		fileID;
	int index = 0,
		option = 0,
		count = 0;
	vector<string> row;


	cout << "What would you like to edit?";

	//different choices are given depending on file name
	if (filename == "data/customer_data.csv") {
		cout << "\n1 - First name"
			"\n2 - Last name"
			"\n3 - Phone number" << endl;
		cin >> index;

		if (index > 3 || index < 0) {
			cout << "Invalid choice";
			return false; //incorrect selection breaks back to last menu
		}

		if (index == 3) {
			updatedValue = checkPhone();
		}
		else {
			cout << "What should this be changed to? \n";
			cin >> updatedValue;
		}

		//runs through the whole original file
		while (!fin.eof()) {
			row.clear();

			//gets line and creates new stringstream variable
			getline(fin, line, '\n');
			if (line.length() != 0) {
				std::stringstream sstr(line);

				//pushes each word from the current line into the vector
				while (getline(sstr, word, ',')) {
					row.push_back(word);
				}

				fileID = row[0];
				int rowSize = row.size();

				if (fileID == uniqueID) {
					count = 1;
					row[index] = updatedValue;

					if (!fin.eof()) {
						for (int i = 0; i < rowSize - 1; i++) {
							// write the updated data into the new file "data/updated_file_temp_name.csv"
							fout << row[i] << ",";
						}
						fout << row[rowSize - 1] << "\n";
					}
				}
				else {
					if (!fin.eof()) {
						for (int i = 0; i < rowSize - 1; i++) {

							// write existing data into the new file
							fout << row[i] << ",";
						}
						fout << row[rowSize - 1] << "\n";
					}

				}
				if (fin.eof()) {
					for (int i = 0; i < rowSize - 1; i++) {
						// write last line to new file without a newline
						fout << row[i] << ",";
					}
					fout << row[rowSize - 1];
					break;
				}
			}
		}

		if (count == 0)
			cout << "Data not found, nothing was changed.\n";
		if (count == 2)
			cout << "Program encountered a 'space' character and had to exit.\n";

		fin.close();
		fout.close();

		// removing the existing file
		remove("data/customer_data.csv");

		// renaming the updated file with the existing file name
		rename("data/updated_file_temp_name.csv", "data/customer_data.csv");

		return true;
	}
	return true;
}

void customerMenu(Login session) {
	Policy vehicleID;
	customer.userLoginInfo.email = session.email;
	int menuSelection = 0;
	bool menuRunning = true;
	while (menuRunning) {
		cout << "\nWelcome " << customer.firstName;
		cout << "\nPlease select from the following options: ";
		cout << "\n1. View your customer details.";
		cout << "\n2. Update your customer details.";
		cout << "\n3. View your policy.";
		cout << "\n4. View your vehicle.";
		cout << "\n5. View your claim.";
		cout << "\n6. Make a claim.";
		cout << "\n7. Log Out.\n";
		cin >> menuSelection;
		cout << std::endl;

		switch (menuSelection) {

		case 1:
			//Customer print statement to be print printCustomer()
			printCustomer();
			break;
		case 2:
			updateCsv("data/customer_data.csv", customer.ID);
			//Update customer info 
			break;
		case 3:
			loadPolicy("data/policy_data.csv", customer.ID);
			printPolicy();
			//Print function from policy.cpp
			break;
		case 4:
			vehicleID = loadPolicy("data/policy_data.csv", customer.ID);
			loadVehicle("data/vehicle_data.csv", vehicleID.insuredVehicle.ID);
			printVehicle();
			//Print function from vehicle.cpp
			break;
		case 5:
			if ("none" == readCSV("data/claim_data.csv", customer.ID)) {
				cout << "You do not have any claims.\n";
			}
			else {
				loadClaim("data/claim_data.csv", customer.ID);
				printClaim();
			}
			break;
		case 6:
			makeClaim(customer.ID);
			//Print function from claim.cpp - will also need logic to say if a claim exists or not
			break;
		case 7:
			menuRunning = false;
			openingMenu();
			break;
		default:
			cout << "Please pick from one of the displayed options by pressing their respective number.";
			break;
		}
	}
}