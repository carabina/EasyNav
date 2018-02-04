//
//  RoundButton.swift
//  Nav
//
//  Created by elena verona on 04/02/2018.
<<<<<<< HEAD:Nav/Nav/RoundButton.swift
//  Copyright © 2018 ios. All rights reserved.
=======
//  Copyright © 2018 group-ios. All rights reserved.
>>>>>>> 8e4fdbaa6697378a67f6791dd70978152edd4ccc:EasyNav/RoundButton.swift
//

import Foundation
import UIKit

@IBDesignable
class RoundButton: UIButton {
    
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 0 {
        didSet {
            self.layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var borderColor: UIColor = UIColor.clear {
        didSet{
            self.layer.borderColor = borderColor.cgColor
        }
    }
    
    
<<<<<<< HEAD:Nav/Nav/RoundButton.swift
    
    
=======
>>>>>>> 8e4fdbaa6697378a67f6791dd70978152edd4ccc:EasyNav/RoundButton.swift
}
