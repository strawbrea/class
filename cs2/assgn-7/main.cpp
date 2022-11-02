// Name: Breanna Lowery
// Assignment: ASSGN7-A

#include <iostream>
#include <string>
#include <fstream>
#include <map>
#include <iomanip>
#include "movies.hpp"

int main()
{

    std::ifstream input;
    int scores, rating;
    std::string name, number;
    std::map<std::string, Rating> Ratings;
    std::map<std::string, Rating>::iterator iter;
    input.open("ratings.txt");

    if (input.fail())
    {
        std::cout << "Input file opening failed.\n";
    exit(1);
    }

    input >> scores;
    input.ignore();

    for (int i = 0; i < scores; i++)
	{
        getline(input, name);
        getline(input, number);
        rating = stof(number);
        iter = Ratings.find(name);
        if (iter == Ratings.end())
        {
            Rating r(name, 1, rating);
            Ratings.insert(std::pair<std::string, Rating>(name, r));
        }
        else
        {
            iter->second.count++;
            iter->second.totalRating += rating;
        }

    }
    input.close();
	iter = Ratings.begin();
	std::cout << std::fixed << std::setprecision(1);
	while (iter != Ratings.end())
    {
        std::cout << iter->second.title << ": " << iter->second.count << " reviews, " << "average of " <<
        iter->second.totalRating / (float(iter->second.count)) << "/5" << std::endl;
        iter++;
    }
    return(0);
}

