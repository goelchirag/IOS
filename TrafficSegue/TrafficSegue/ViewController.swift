//
//  ViewController.swift
//  TrafficSegue
//
//  Created by Angered Force on 4/11/1400 AP.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func unwindToRed(unwindSegue: UIStoryboardSegue) {
     
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        segue.destination.navigationItem.title = textField.text;
    }

}

