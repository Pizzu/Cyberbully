//
//  RoundedButton.swift
//  Cyberbully
//
//  Created by Luca Lo Forte on 10/02/2019.
//  Copyright © 2019 Luca Lo Forte. All rights reserved.
//

import UIKit

class RoundedButton: UIButton {
    
    override func awakeFromNib() {
        self.layer.borderWidth = 3
        self.layer.borderColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.layer.cornerRadius = 10
        self.clipsToBounds = true
    }
    
}
