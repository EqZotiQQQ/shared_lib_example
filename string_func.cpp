#include <string>
#include <iostream>

int getStringLength(std::string const& str) {
    return str.length();
}

void printString(std::string const& str) {
    std::cout << "String is: " << str << std::endl;
}
