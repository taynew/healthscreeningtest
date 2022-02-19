//
//  ViewController.swift
//  healthscreeningtest
//
//  Created by Derrick Duller on 2/18/22.
//

import UIKit

class ViewController: UIViewController {
    
    let hsquestions = ["Have you experienced any symptoms of COVID-19, including a fever of 100.0 degrees F or greater, a new cough, new loss of taste or smell or shortness of breath within the past 10 days?", "In the past 10 days, have you gotten a positive result from a COVID-19 test that tested saliva or used a nose or throat swab? (not a blood test)", "To the best of your knowledge, in the past 14 days, have you been in close contact (within 6 feet for at least 10 minutes) with anyone who tested positive for COVID-19 or who has or had symptoms of COVID-19?", "Have you traveled internationally or from a state with widespread community transmission of COVID-19 per the New York State Travel Advisory in the past 14 days?"]
    
    let hsanswers = [["No","Yes"], ["No","Yes"], ["No","Yes"], ["No","Yes"]]
    
    //Variables
    var currentQuestion = 0
    var rightAnswer = 1
    var points = 0

    //Label
    @IBOutlet weak var question: UILabel!
    
    //Button
   
    @IBAction func answer(_ sender: UIButton) {
        if (sender.tag == rightAnswer) {
            points += 1
            print("Right")
        }
        else {
            print("Wrong")
        }
        if (currentQuestion != hsquestions.count) {
            newQuestion()
        }
        else {
            performSegue(withIdentifier: "results", sender: self)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var secondController = segue.destination as! ResultScreenViewController
        secondController.scoring = points
    }
    override func viewDidAppear(_ animated: Bool) {
        newQuestion()
    }
    
    //function that display question
    func newQuestion() {
        if (currentQuestion != hsquestions.count) {
        question.text = hsquestions[currentQuestion]
            var button:UIButton =  UIButton()
            
            var x = 1
            
            for i in 1...2 {
                button = view.viewWithTag(i) as! UIButton
                
                if (i == rightAnswer) {
                    button.setTitle(hsanswers[currentQuestion][0], for: .normal)
                }
                else {
                    button.setTitle(hsanswers[currentQuestion][x], for: .normal)
                    x = 2
                }
            }
            currentQuestion += 1;
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

