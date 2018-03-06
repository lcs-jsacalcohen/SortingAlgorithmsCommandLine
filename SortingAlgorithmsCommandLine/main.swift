//
//  main.swift
//  SortingAlgorithmsCommandLine
//
//  Created by Gordon, Russell on 2018-02-26.
//  Copyright © 2018 Gordon, Russell. All rights reserved.
//

import Foundation

// --------------- Convenience functions ---------------

// Generates a random number between the minimum and maximum values given (inclusive)
func random(between min: UInt32, and max: UInt32) -> Int {
    return Int(arc4random_uniform(max - min + 1) + min)
}

// ----------- Start of main part of program -----------

// Ask the user if they are ready to begin
print("Press any key to generate the unsorted list.", terminator: "")

// Wait for a key to be pressed
let input = readLine()

// Make an empty array / list
var cards : [Int] = []

// Populate the array
cards.append(3)
cards.append(6)
cards.append(4)
cards.append(5)
cards.append(8)
cards.append(2)
cards.append(1)

// Show the user the contents of the array
print("-----")
print("The contents of the unsorted list:")
for i in 0...cards.count - 1 {
    print("Index \(i), value: \(cards[i])")
}
print("-----")

// ----------- Write code to sort the array here -----------
print("Now sorting the array...")

while cards.count > 0 {
    cards.remove(at: cards.count - 1) //remove number at end of erray
}

// ----------- Final part of the program, show the sorted list -----------
print("-----")
print("The contents of the sorted list:")
for i in 0...cards.count - 1 {
    print("Index \(i), value: \(cards[i])")
}
print("-----")


