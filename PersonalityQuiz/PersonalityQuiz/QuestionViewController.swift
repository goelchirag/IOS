//
//  QuestionViewController.swift
//  PersonalityQuiz
//
//  Created by Angered Force on 4/16/1400 AP.
//

import UIKit

class QuestionViewController: UIViewController {
    @IBOutlet weak var Label: UILabel!
    @IBOutlet weak var multipleStackView: UIStackView!
    @IBOutlet weak var multiLabel1: UILabel!
    @IBOutlet weak var multiSwitch1: UISwitch!
    @IBOutlet weak var multiLabel2: UILabel!
    @IBOutlet weak var multiSwitch2: UISwitch!
    @IBOutlet weak var multiLabel3: UILabel!
    @IBOutlet weak var multiSwitch3: UISwitch!
    @IBOutlet weak var multiLabel4: UILabel!
    @IBOutlet weak var multiSwtich4: UISwitch!
    @IBOutlet weak var rangedStackView: UIStackView!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var rangedlabel1: UILabel!
    @IBOutlet weak var rangedLabel2: UILabel!
    @IBOutlet weak var singleStackView: UIStackView!
    @IBOutlet weak var singlebutton1: UIButton!
    @IBOutlet weak var singleButton2:UIButton!
    @IBOutlet weak var SingleButton3: UIButton!

    @IBOutlet weak var singleButton4: UIButton!
    
    var index = 0;
    @IBOutlet weak var progress: UIProgressView!
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    func updateUI(){
        singleStackView.isHidden = true
        multipleStackView.isHidden = true
        rangedStackView.isHidden = true
        navigationItem.title = "Question #\(index+1)"
        let currentQuestion = questions[index]
        let currentAnswer = currentQuestion.answer
        let totalprogress = Float(index)/Float(questions.count)
        Label.text = currentQuestion.text
        progress.setProgress(totalprogress, animated: true)
        switch currentQuestion.type {
        case .single:
            updatesingle(using : currentAnswer)
        case .multiple:
            updatemulti(using: currentAnswer)
        case .ranged:
            updaterange(using: currentAnswer)
        }
    }
    func updatesingle(using answer : [Answer]){
        singleStackView.isHidden = false
        singlebutton1.setTitle(answer[0].text, for: .normal)
        singleButton2.setTitle(answer[1].text, for: .normal)
        SingleButton3.setTitle(answer[2].text, for: .normal)
        singleButton4.setTitle(answer[3].text, for: .normal)
        
    }
    func updatemulti(using answer : [Answer]){
        multipleStackView.isHidden = false
        multiSwtich4.isOn = false
        multiSwitch1.isOn = false
        multiSwitch2.isOn = false
        multiSwitch3.isOn = false
        multiLabel1.text = answer[0].text
        multiLabel2.text = answer[1].text
        multiLabel3.text = answer[2].text
        multiLabel4.text = answer[3].text
    }
    func updaterange(using answer: [Answer]){
        rangedStackView.isHidden = false
        slider.setValue(0.5, animated: false)
        rangedlabel1.text = answer.first?.text
        rangedLabel2.text = answer.last?.text
    }
    var answerChoosen:[Answer] = []
    @IBAction func singlestackResponse(_ sender: UIButton) {
        let currentAnswer = questions[index].answer
        switch sender{
        case singlebutton1:
            answerChoosen.append(currentAnswer[0])
        case singleButton2:
            answerChoosen.append(currentAnswer[1])
        case SingleButton3:
            answerChoosen.append(currentAnswer[2])
        case singleButton4:
            answerChoosen.append(currentAnswer[3])
        default:
            break;
        }
        nextQuestion()
    }
    
    @IBAction func multipleOptions(_ sender: Any) {
        let currentAnswer = questions[index].answer
       
        if multiSwitch1.isOn{
            answerChoosen.append(currentAnswer[0]);
        }
        if multiSwitch2.isOn{
            answerChoosen.append(currentAnswer[1]);
        };
        if multiSwitch3.isOn{
            answerChoosen.append(currentAnswer[2]);
        }
        if multiSwtich4.isOn{
            answerChoosen.append(currentAnswer[3]);
        }
        nextQuestion();
    }
    
    
    @IBAction func rangeAnswee(_ sender: Any) {
        let currentAnswer = questions[index].answer
        let index = Int(round(slider.value)*Float(currentAnswer.count-1))
        answerChoosen.append(currentAnswer[index])
        nextQuestion()
    }
    func nextQuestion(){
        index+=1;
        if(index<questions.count){
            updateUI()
        }
        else{
            performSegue(withIdentifier: "ResultSegue", sender:nil)
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "ResultSegue" else {
            return ;
        }
        let viewcontroller = segue.destination as! ResultsViewController
        viewcontroller.response = answerChoosen
    }
}
