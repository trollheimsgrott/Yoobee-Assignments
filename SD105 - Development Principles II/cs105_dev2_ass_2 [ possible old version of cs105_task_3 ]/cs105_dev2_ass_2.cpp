#include <iostream>

class Cost {                    //Cost Class needs data members dollar, cents, count to store dollar value, cent value, and increment items purchased 
public:
    double dollar;
    double cents;
    int count= 1;

    double readCost()            //readCost member function of Class Cost - getter for dollar, cents from user
    {                               
        
        //#########     previously had readcost and showcost taking arguments attempting to store and retrieve data - we need to store nth amount of user input dollar and cent values, and display them as groups ($ dollar . cent) with a total at the end . not sure what the best way is
        //############################################################################################################


        std::cin Cost.dollar;
        std::cin double cents{};
    }
    double showCost() {      //showCost formatting for output of currency from dollar / cents inputs. can make use of force float for cents, end result $n.nn or $nn.nn or $nnn.nn and so on.

    }
    void showCount();
    void computeTotalCost();        //computation for total value of all purchases displayed as currency value, - allow for max cent value 100, carry to dollar value and so on
    
};

void mainMenu();            // instructional menu
void menu();                // menu for dollar cent value inputs
void tempTemplate();        // template menu for showCount member Function


void tempTemplate() {
    //temporary dollar and cent values, with manual incrementation (template menu for showCount member Function)
    Cost purchase;          //trying to initilize the  getter from Cost to print ShowCost values
    Cost purchase2;
    std::cout << " " << purchase2.dollar << "." << purchase2.cents << " Item mumber: " << purchase.count++ << "\n";
    Cost purchase3;
    std::cout << " " << purchase3.dollar << "." << purchase3.cents << " Item mumber: " << purchase.count++ << "\n\n";
    std::cout << " Total Number of items ordered: 3\n Total Cost: " << "$" << (14 + 54 + 1154) << "." << (28 + 18 + 8) << "\n\n";
    
}




void mainMenu() {           //              Instructional topmost menu
   
    int choice;

       
    std::cout << " What do you want to do? \n\n";
    std::cout << " 1. Enter item Price : \n 2. Return Shopping Total with items purchased : \n 3. Exit\n";
    std::cin >> choice;
   
    switch (choice) {
    case 1: 
        menu();
        break;
    case 2:
        tempTemplate();
        mainMenu();
        break;
    case 3: 
        break;
         }
}
void menu() {           //dollar cent value input menu
    Cost readCost;          //initilize attempts to take user values for dollar and cents
    int dollar;
    int cents;
    int choice2;
    std::cout << " Enter Dollar : ";
    std::cin >> readCost.dollar;
    std::cout << " Enter cents : ";
    std::cin >> readCost.cents;
    std::cout << " \nFinish entering items? \n\n 1. Enter more items\n 2. Back to menu\n";
    std::cin >> choice2;

    switch (choice2) {
    case 1:
        menu();
        break;
    case 2: 
        mainMenu();
        break;
   }
 }
int main()      // run main menu in main
{
    std::cout << "********** Online Shopping App **********\n\n";
    mainMenu();
}