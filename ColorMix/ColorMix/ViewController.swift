//
//  ViewController.swift
//  ColorMix
//
//  Created by Angered Force on 4/5/1400 AP.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var blueSwitch: UISwitch!
    @IBOutlet weak var greenSwitch: UISwitch!
    @IBOutlet weak var redSwitch: UISwitch!
    @IBAction func upfateColor(_ sender: UISwitch) {
        var red : CGFloat = 0
        var green : CGFloat = 0
        var blue : CGFloat = 0
        if(redSwitch.isOn){
            red = CGFloat(redSlider.value);
        }
        if(greenSwitch.isOn){
            green = CGFloat(greenSlider.value);
        }
        
        if(blueSwitch.isOn){
            blue = CGFloat(blueSlider.value);
        }
        let color = UIColor(red: red, green: green, blue: blue, alpha: 1)
        colorView.backgroundColor = color
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        
        colorView.backgroundColor = .blue
        
    }
    
    @IBOutlet weak var redSlider: UISlider!
    
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var greenSlider: UISlider!
    @IBAction func greenSlider(_ sender: Any) {
        
        var red :CGFloat = 0
        if(redSwitch.isOn){
            red = CGFloat(redSlider.value)}
        var green :CGFloat = 0
        if(greenSwitch.isOn){
            green = CGFloat(greenSlider.value)
            
        }
        var blue :CGFloat  = 0
        if(blueSwitch.isOn){
            blue = CGFloat(blueSlider.value)
        }
        colorView.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1)
    }
    @IBAction func reset(_ sender: Any) {
        redSwitch.isOn = false
        greenSwitch.isOn = false
        blueSwitch.isOn = false
        redSlider.value = 0
        greenSlider.value = 0
        blueSlider.value = 0
        colorView.backgroundColor = .black
        
    }
}

