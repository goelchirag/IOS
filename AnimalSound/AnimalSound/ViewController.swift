//
//  ViewController.swift
//  AnimalSound
//
//  Created by Angered Force on 4/5/1400 AP.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var animalSoundLabel: UILabel!
    let moo = SimpleSound(named: "moo")
    @IBAction func cowButtonTapped(_ sender: Any) {
        animalSoundLabel.text = "Moo!"
        moo.play()
    }
    let woof = SimpleSound(named: "woof")
    @IBAction func dogButtonTapped(_ sender: Any) {
        animalSoundLabel.text = "Woof!"
        woof.play()
    }
    let meow = SimpleSound(named: "meow")
    @IBAction func catButtonTapped(_ sender: Any) {
        animalSoundLabel.text = "Meow!"
        meow.play()
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

