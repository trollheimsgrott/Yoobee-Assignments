#include <iostream>
#include <vector>
#include <fstream>
#include <sstream>


using std::cout;
using std::cin;
using std::string;
using std::fstream;
using std::istringstream;



struct claim {
    int id,
        policyType,
        policyID,
        payout;
        //vehicle claimedVehicle;  Will call vehicle.h file
   

    claim(){
        id = payout = policyType = policyID = 0;
    }

    void updateClaimStatis(string ID, bool newStatus) {
        std::fstream claims("data/claim_data.csv");
        string temp;

        string line;
        while (getline(claims, line)) {
            if (line.rfind(ID, 0) == 0) {
                std::istringstream linestream(line);

                string item;
                getline(linestream, item, ',');
                string currentID = item;
                getline(linestream, item, ',');
                string customerPolicy0 = item;
                getline(linestream, item, ',');
                string customerPolicy2 = item;
                getline(linestream, item, ',');
                string currentClaimStatus = item;

                string tempLine = currentID + ',' +
                    customerPolicy0 + ',' +
                    customerPolicy2 + ',' +
                    std::to_string(int(newStatus));
                temp += tempLine + '\n';

            }
            else {
                temp += line + '\n';
            }
        }

        claims << temp;
        claims.close();
    }

    int getPayOut(){
        int excess;
            if (policyType == 1){
                excess = 300;
            }
            if (policyType == 2){
                excess = 100;
            }
            if (policyType == 3){
                excess = 0;
            }
           // payout = claimedVehicle.insuredValue - excess; Needs vehicle.h file
            
            return payout;
    }



    // void makeClaim() {
    //     // claimID to be added when file manager.cpp complete
    //     cout << "Please enter the registration of the insured vehicle: ";
    //     getline(cin, vehicleRegistration);
    //     // Logic to be added. Check registration is valid, return not on policy if not.
    //     cout << "If your claim is approved. Your payout amount will be: ";
    //     //Add payout amount. It will be Ins Value - excess
    //}
};