//: Playground - noun: a place where people can play

import UIKit

// asymptotic analysis: - the process of describing the efficiency of algorithms as their input size (n) grows...
// a.k.a. Big O Notation...

// array of sorted integers
let numberList = [6, 2, 3, 4, 5, 1, 7, 8, 9, 10]

// linear time
// looping through a data structure until you find a match is called 'brute forcing'
func linearSearch(key: Int) {
    // check all possible values
    // this is running in linear time because its speed is dependent on its input size
    for number in numberList {
        print("fuel used...")
        if number == key {
            print("value at \(key) found...")
            break
        }
    }
}
// linearSearch(8)

// this becomes less efficient as its input size grows...

// Logarithmic time...
// use knowledge about the data to reduce our search criteria...
// this example is only useful for searching integers...
func binarySearch(key: Int, imin: Int, imax: Int) {
    let midIndex: Double = round(Double((imin + imax) / 2))
    print(midIndex)
    let midNumber = numberList[Int(midIndex)]
    // reduce the range
    if midNumber > key {
        binarySearch(key, imin: imin, imax: Int(midIndex) - 1)
    }
    // increase the range
    else if (midNumber < key) {
        binarySearch(key, imin: Int(midIndex) + 1, imax: imax)
    }
    else {
        print("value \(key) found...")
    }
}