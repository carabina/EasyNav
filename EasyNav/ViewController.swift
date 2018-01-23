//
//  ViewController.swift
//  EasyNav
//
//  Created by elena verona on 23/01/2018.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var moreButton: UIButton!
    @IBOutlet weak var phoneButton: UIButton!
    @IBOutlet weak var contactButton: UIButton!
    @IBOutlet weak var messageButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
 
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func moreButtonClick(_ sender: UIButton) {
        buttonClick(button: sender, onImage: #imageLiteral(resourceName: "menu_on"), offImage: #imageLiteral(resourceName: "menu_off"))
    }
    
    @IBAction func phoneButtonClick(_ sender: UIButton) {
        buttonClick(button: sender, onImage: #imageLiteral(resourceName: "call_on"), offImage: #imageLiteral(resourceName: "call_off"))
    }
    
    @IBAction func contactButtonClick(_ sender: UIButton) {
        buttonClick(button: sender, onImage: #imageLiteral(resourceName: "contact_on"), offImage: #imageLiteral(resourceName: "contact_off"))
    }
    
    @IBAction func messageButtonClick(_ sender: UIButton) {
        buttonClick(button: sender, onImage: #imageLiteral(resourceName: "message_on"), offImage: #imageLiteral(resourceName: "message_off"))
    }
    
    func buttonClick(button: UIButton, onImage: UIImage, offImage: UIImage){
        if button.backgroundColor == UIColor.white {
            button.backgroundColor = UIColor.black
            button.tintColor = UIColor.blue
            button.setImage(offImage, for: .normal)
            
        } else{
             button.backgroundColor = UIColor.white
             button.setImage(onImage, for: .normal)
        }
    }
}

