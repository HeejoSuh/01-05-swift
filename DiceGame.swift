//
//  DiceGame.swift
//  This program will generate a random number between 1 and 6. 
// It will then ask the user to guess the number and will keep track of the 
// number of guesses until the user gets the right answer. 
// It will then tell the user how many guesses it took
//
//
//  Created by Heejo Suh in Feb 2018
//  Copyright @ 2018 MTHS. All rights reserved.
//
import Foundation


var individualTime: Double = 0
var input: String?
var guessedNumber: Int
var guessCount: Int = 0


srand(UInt32(time(nil)))

//roll the dice
var diceNumber: Int = Int(random()%(6) + 1)
//6 is the maximum and the 1 is the minimum 
print("Dice rolled!\n");
        


//get snack type
while true {
	print("Guess the number: ")
    input = readLine(strippingNewline: true)
	//check if input is a number
	if let guessedNumber = Int(input!){
		if guessedNumber>=1 && guessedNumber<=6{
			//if guessedNumber is in right range
			if guessedNumber==diceNumber{
				//if correct guess
				print("Correct!\nWrong tries: \(guessCount)")
				break
			}else{
				//wrong guess
				guessCount=guessCount+1
				print("Try again with a valid number!")
			}
		}else{
			//input is not a dice number
			print("Try again with a valid number!")
		}
		
	}else{
		//not an integer
		print("Try again with a number!")
	}
}
