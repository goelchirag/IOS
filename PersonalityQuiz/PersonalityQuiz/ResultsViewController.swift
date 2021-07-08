//
//  ResultsViewController.swift
//  PersonalityQuiz
//
//  Created by Angered Force on 4/16/1400 AP.
//

import UIKit

class ResultsViewController: UIViewController {
    var response : [Answer]!
    
    @IBOutlet weak var desx: UILabel!
    @IBOutlet weak var result: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        for x in response{
            print(x);
        }
        var res :AnimalType;
        res = calculate()
        desx.text = res.definition
        result.text = "You are a \(res.rawValue)"
        navigationItem.hidesBackButton = true
    }
    func calculate()->AnimalType{
        var a : [Int] = [0,0,0,0];
        for answer in response{
            switch answer.type {
            case .dog:
                a[0]+=1;
            case .cat:
                a[1]+=1;
            case .rabbit:
                a[2]+=1;
            case .turtle:
                a[3]+=1;
            }
        }
        var index = 0;
        for i in 0...3{
            if(a[index]<a[i]){
                index = i;}
        }
        switch index {
        case 0 :
            return .dog
        case 1:
            return .cat
        case 2:
            return .rabbit
        case 3:
            return .turtle
        default:
            return .dog
        }
            
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
