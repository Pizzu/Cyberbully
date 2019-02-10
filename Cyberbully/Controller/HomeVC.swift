//
//  ViewController.swift
//  Cyberbully
//
//  Created by Luca Lo Forte on 08/02/2019.
//  Copyright © 2019 Luca Lo Forte. All rights reserved.
//

import UIKit

class HomeVC: UIViewController, UITextFieldDelegate {

    //Outlets
    @IBOutlet weak var predictionLabel: UILabel!
    @IBOutlet weak var sentenceTextField: UITextField!
    
    var viewModel : ViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sentenceTextField.delegate = self
        sentenceTextField.becomeFirstResponder()
    }

    @IBAction func analyzeBtnPressed(_ sender: Any) {
        guard let sentence = sentenceTextField.text , !sentence.isEmpty else {
            predictionLabel.text = "Please enter a sentence."
            return
        }
        viewModel = ViewModel(textData: sentence)
        predictionLabel.text = viewModel.sentiment.text
        sentenceTextField.text = ""
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        analyzeBtnPressed(sentenceTextField)
        return true
    }
    
}

