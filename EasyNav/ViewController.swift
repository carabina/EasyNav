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
    
    var phoneButtonCenter: CGPoint!
    var contactButtonCenter: CGPoint!
    var messageButtonCenter: CGPoint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        phoneButtonCenter = phoneButton.center
        contactButtonCenter = contactButton.center
        messageButtonCenter = messageButton.center
        
        self.phoneButton.alpha = 0
        self.contactButton.alpha = 0
        self.messageButton.alpha = 0
        
        phoneButton.center = moreButton.center
        contactButton.center = moreButton.center
        messageButton.center = moreButton.center
        // Do any additional setup after loading the view, typically from a nib.
    }
    
 
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func moreButtonClick(_ sender: UIButton) {
        if moreButton.currentImage != #imageLiteral(resourceName: "menu_off"){
            UIView.animate(withDuration: 0.3, animations: {
                self.phoneButton.alpha = 1
                self.contactButton.alpha = 1
                self.messageButton.alpha = 1
                self.phoneButton.center = self.phoneButtonCenter
                self.contactButton.center = self.contactButtonCenter
                self.messageButton.center = self.messageButtonCenter
            })
        }else{
            UIView.animate(withDuration: 0.3, animations: {
                self.phoneButton.alpha = 0
                self.contactButton.alpha = 0
                self.messageButton.alpha = 0
                self.phoneButton.center = self.moreButton.center
                self.contactButton.center = self.moreButton.center
                self.messageButton.center = self.moreButton.center
            })
        }
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
        if button.currentImage == onImage{
            button.backgroundColor = UIColor.black
            button.tintColor = UIColor.blue
            button.setImage(offImage, for: .normal)
            
        } else{
             button.backgroundColor = UIColor.white
             button.setImage(onImage, for: .normal)
        }
    }
}

