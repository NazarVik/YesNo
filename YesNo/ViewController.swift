//
//  ViewController.swift
//  YesNo
//
//  Created by Виктор Назаров on 4.04.23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var answerLabel: UILabel!
    
    @IBOutlet weak var answerButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        answerButton.layer.cornerRadius = 15
        answerButton.layer.shadowOpacity = 0.9
        answerButton.layer.shadowOffset = CGSize(width: 1, height: 8)
        
        // Do any additional setup after loading the view.
    }

    @IBAction func answerButtonAction(_ sender: UIButton) {
        let answer = Bool.random()
        answerLabel.text = ""
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.answerLabel.text = answer ? "YES" : "NO"
        }
        
        
    }
    
}

