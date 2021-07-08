//
//  ViewController.swift
//  MyApp
//
//  Created by Angered Force on 4/3/1400 AP.
//

import UIKit

class ViewController: UIViewController {

    func  update() {
        answerLabel.text = "?"
        let elementName = elementList[currentElementIndex]
        let image = UIImage(named:elementName)
        imageView.image = image
    }
    @IBAction func nextElement(_ sender: Any) {
        currentElementIndex+=1;
        if(currentElementIndex==4){
        currentElementIndex=0;}
        update()
    }
    @IBAction func showAnswer(_ sender: Any) {
        answerLabel.text = elementList[currentElementIndex]
    }
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
let elementList = ["Carbon", "Gold", "Chlorine", "Sodium"]
    var currentElementIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        update()
    }


}

