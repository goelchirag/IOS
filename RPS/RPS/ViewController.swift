//
//  ViewController.swift
//  RPS
//
//  Created by Angered Force on 4/6/1400 AP.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var play: UIButton!
    @IBOutlet weak var scissor: UIButton!
    @IBOutlet weak var paper: UIButton!
    @IBOutlet weak var rock: UIButton!
    @IBOutlet weak var Status: UILabel!
    @IBOutlet weak var Top: UILabel!
    
    @IBAction func Choice(_ sender: Any) {
        play.isHidden = false
        rock.isHidden = true
        paper.isHidden = true
        scissor.isHidden = true
        let opponent : Sign = randomSign()
        var me :Sign;
        if(rock.isEnabled){
            me = .rock
        }
        else if(paper.isEnabled){
            me = .paper
        }
        else{
            me = .scissor
        }
        let state : GameState = me.result(opponent: opponent)
        if(state == .win){
            Status.text = "WON"
            Top.text = "💪"
        }
        else if(state == .draw){
            Status.text = "DRAW"
            Top.text = "🤜🤛"
        }
        else{
            Status.text = "LOSE"
            Top.text = "😞"
        }
        
    }
    
    @IBAction func playAgain(_ sender: Any) {
        play.isHidden = true
        rock.isHidden = false
        paper.isHidden = false
        scissor.isHidden = false
        Top.text = "🕹"
        Status.text = "Rock , Paper , Scissors? "
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

