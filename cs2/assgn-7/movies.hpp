// Name: Breanna Lowery
// Assignment: ASSGN7-A

#ifndef MOVIES_HPP_INCLUDED
#define MOVIES_HPP_INCLUDED
#include <map>
#include <string>

struct Rating
{
    float totalRating;
    int count;
    std::string title;
    Rating()
    {
        totalRating = 0 ;
        count = 0;
    }
    Rating (std::string name, int num, float total)
    {
        title = name;
        totalRating = total;
        count = num;
    }
};

#endif // MOVIES_HPP_INCLUDED
