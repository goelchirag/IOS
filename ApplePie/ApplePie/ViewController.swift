//
//  ViewController.swift
//  ApplePie
//
//  Created by Angered Force on 4/8/1400 AP.
//

import UIKit

class ViewController: UIViewController {
    var listofwords = ["chirag","wrath","anger","force"]
    let incorrectWordsLimit = 7
    var totalWins = 0{
        didSet{
            newRound()
        }
    }
    var totalLoss = 0{
        didSet{
            newRound()
        }
    }
    @IBOutlet weak var treeLabel: UIImageView!
    @IBOutlet var word: [UIButton]!
    @IBOutlet weak var correctLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    var currentGame : Game!;
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        newRound()
    }
    func newRound(){
        if (listofwords.isEmpty){
            listofwords = ["chirag","wrath","anger","force"]
        }
        currentGame = Game(word: listofwords.removeFirst(), incorrectMovesRemaining: incorrectWordsLimit,guessedLetter: [])
        for i in word   {
            i.isEnabled = true
            
        }
        updateUI()
        
    }
    func updateUI(){
        correctLabel.text = currentGame.formatedWord
        scoreLabel.text = "Win: \(totalWins), Losses: \(totalLoss)"
        treeLabel.image = UIImage(named: "Tree \(currentGame.incorrectMovesRemaining)")
    }
    @IBAction func buttonPressed(_ sender: UIButton) {
        sender.isEnabled  = false
        let letterString = sender.title(for: .normal)!
        
        let letter = Character(letterString.lowercased())
        currentGame.playerGuessed(letter: letter)
        updateGameState()
        
    }
    func updateGameState(){
        if(currentGame.incorrectMovesRemaining == 0){
            totalLoss += 1;
        }
        else if(currentGame.word == currentGame.formatedWord2){
            totalWins += 1
        }
        else{
            updateUI()
        }
    }
    
    

}

