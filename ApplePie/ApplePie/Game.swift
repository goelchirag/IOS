//
//  Game.swift
//  ApplePie
//
//  Created by Angered Force on 4/9/1400 AP.
//

import Foundation

struct Game{
    var word : String
    var incorrectMovesRemaining : Int
    var guessedLetter : [Character]
    var formatedWord : String{
        var guessedWord = ""
        for letter in word  {
            if(guessedLetter.contains(letter)){
            guessedWord += "\(letter) "
        }
        else{
            guessedWord += "_ "
        }
        }
        return guessedWord
    }
    var formatedWord2 : String{
        var guessedWord = ""
        for letter in word  {
            if(guessedLetter.contains(letter)){
            guessedWord += "\(letter)"
        }
        else{
            guessedWord += "_"
        }
        }
        return guessedWord
    }
    mutating func playerGuessed(letter : Character){
        guessedLetter.append(letter)
        if !word.contains(letter) {
            incorrectMovesRemaining -= 1;
        }
    }
    
}
