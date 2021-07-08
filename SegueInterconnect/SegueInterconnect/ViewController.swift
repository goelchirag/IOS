//
//  ViewController.swift
//  SegueInterconnect
//
//  Created by Angered Force on 4/13/1400 AP.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var selected: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func green(_ sender: Any) {
        if(selected.isOn){
            performSegue(withIdentifier: "green", sender: nil)}
    }
    
    @IBAction func yelllow(_ sender: Any) {
        if(selected.isOn){
        performSegue(withIdentifier: "yellow", sender: nil)
        }}
    
    
    
}

