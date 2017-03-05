#pragma once
#include <vector>
#include <string>
#include <fstream>
#include <limits>
#include <iomanip>
#include <cmath>

///
/// Converts the argument to string in an OS-independent manner
/// The point here is that NaN and inf may be printed differently, this 
/// takes care of that.
///
template<class T>
void printToStream(std::ostream& out, const T& in) {
    if (in != in) { // in is NaN
        out << "NaN";
    }
    else if (std::isfinite(in)) {
        out << in;
    }
    else {
        out << "inf";
    }
}

///
/// Writes the contents of the vector 'data' to the textfile filename
/// The output format should be load-able in MATLAB and Numpy using the
/// load-command.
///
template<typename T>
void writeToFile(const std::string& filename,
         const T& data) {
    
    std::ofstream file(filename.c_str());
    // Set highest possible precision, this way we are sure we are
    file << std::setprecision(std::numeric_limits<long double>::digits10 + 1);

    // Loop over vector and write output to file
    for(int i = 0; i < data.size(); ++i) {
        printToStream(file, data[i]);
        file << " ";
    }
    file << std::endl;

    // File closes automatically at end of scope!
}
