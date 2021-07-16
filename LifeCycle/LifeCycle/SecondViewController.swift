//
//  SecondViewController.swift
//  LifeCycle
//
//  Created by Angered Force on 4/22/1400 AP.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var details: UILabel!
    func update(_ parameter : String){
        if let x = details.text{
            details.text="\(x)\n\(parameter) has occured";
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        update("DidLoad")
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        update("WillAppear")
    }
    override func viewDidAppear(_ animated: Bool) {
        update("didAppear")
    }
    override func viewWillDisappear(_ animated: Bool) {
        update("WillDissapear")
    }
    override func viewDidDisappear(_ animated: Bool) {
        update("DidDissapear")
    }
    

}
