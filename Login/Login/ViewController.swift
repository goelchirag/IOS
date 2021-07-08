//
//  ViewController.swift
//  Login
//
//  Created by Angered Force on 4/13/1400 AP.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var forgotusername: UIButton!
    @IBOutlet weak var forgotpassword: UIButton!
    @IBOutlet weak var user: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let sender = sender as? UIButton else {return}
        if(sender == forgotpassword){
            segue.destination.navigationItem.title = "Forgot Password"
        }
        else if(sender == forgotusername){
            segue.destination.navigationItem.title = "Forgot Username"
        }
        else{
            segue.destination.navigationItem.title = user.text
        }    }

    @IBAction func usetname(_ sender: Any) {
    performSegue(withIdentifier: "go", sender: forgotusername)
        
    }
    
    @IBAction func password(_ sender: Any) {
        performSegue(withIdentifier: "go", sender: forgotpassword)
    }
}

