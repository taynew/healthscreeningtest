//
//  ResultScreenViewController.swift
//  healthscreeningtest
//
//  Created by Derrick Duller on 2/18/22.
//

import UIKit

class ResultScreenViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if (scoring == 4) {
            labeling.text = "congratulations"
        }
        else {
            labeling.text = "nope"
        }
        // Do any additional setup after loading the view.
    }
    
    var scoring = 0

    @IBOutlet weak var labeling: UILabel!
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
