// C++ program to create a simple class
#include <iostream>
#include <string>

using namespace std;

// Define a class
class Someone {
public:
    // Data members
    string name;
    int age;

    // Member function to introduce Someone
    void introduce()
    {
        cout << "Hi, my name is " << name << " and I am "
             << age << " years old." << endl;
    }
};

int main()
{
    // Create an object of the Person class
    Someone anybody;

    // accessing data members
    anybody.name = "Cindy";
    anybody.age = 25;

    // Call the introduce member method
    anybody.introduce();

    return 0;
}
