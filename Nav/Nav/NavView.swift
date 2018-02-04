//
//  CustomView.swift
//  CustomViewFromXib
//
//  Created by Paul Solt on 12/10/14.
//  Copyright (c) 2014 Paul Solt. All rights reserved.
//

import UIKit

@IBDesignable class NavView: UIView {
    
    // Our custom view from the XIB file
    var view: UIView!
    
    // Outlets
    

    @IBOutlet weak var moreButton: UIButton!
    @IBOutlet weak var phoneButton: UIButton!
    @IBOutlet weak var contactButton: UIButton!
    @IBOutlet weak var messageButton: UIButton!
    
    var phoneButtonCenter: CGPoint!
    var contactButtonCenter: CGPoint!
    var messageButtonCenter: CGPoint!
    
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
    @IBAction func moreButtonClick(_ sender: UIButton) {
        buttonClick(button: sender, onImage: #imageLiteral(resourceName: "menu_on"), offImage: #imageLiteral(resourceName: "menu_off"))
        if(phoneButton.center != moreButton.center && contactButton.center != moreButton.center && messageButton.center != moreButton.center){
            UIView.animate(withDuration: 0.3, animations: {
                self.phoneButton.alpha = 0
                self.contactButton.alpha = 0
                self.messageButton.alpha = 0
                self.phoneButton.center = self.moreButton.center
                self.contactButton.center = self.moreButton.center
                self.messageButton.center = self.moreButton.center
            })
        }else{
            UIView.animate(withDuration: 0.3, animations: {
                self.phoneButton.alpha = 1
                self.contactButton.alpha = 1
                self.messageButton.alpha = 1
                self.phoneButton.center = CGPoint(x: 110, y: 600)
                self.messageButton.center = CGPoint(x: 263, y: 600)
                self.contactButton.center = CGPoint(x: 187, y: 550)
                self.phoneButton.setImage(#imageLiteral(resourceName: "call_on"), for: .normal)
                self.phoneButton.backgroundColor = UIColor.white
                self.phoneButton.setImage(#imageLiteral(resourceName: "call_on"), for: .normal)
                self.contactButton.backgroundColor = UIColor.white
                self.contactButton.setImage(#imageLiteral(resourceName: "contact_on"), for: .normal)
                self.messageButton.backgroundColor = UIColor.white
                self.messageButton.setImage(#imageLiteral(resourceName: "message_on"), for: .normal)
                
            })
            
        }
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
    
    
    
    override init(frame: CGRect) {
        // 1. setup any properties here

        
        // 2. call super.init(frame:)
        super.init(frame: frame)
        
        // 3. Setup view from .xib file
        xibSetup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        // 1. setup any properties here
        
        // 2. call super.init(coder:)
        super.init(coder: aDecoder)
        
        // 3. Setup view from .xib file
        xibSetup()
//        self.view = loadViewFromNib() as! CustomView
    }
    
    func xibSetup() {
        view = loadViewFromNib()
        
        // use bounds not frame or it'll be offset
        view.frame = bounds
        
        // Make the view stretch with containing view
        view.autoresizingMask = [UIViewAutoresizing.flexibleWidth, UIViewAutoresizing.flexibleHeight]
        
        // Adding custom subview on top of our view (over any custom drawing > see note below)
        addSubview(view)
    }
    
    func loadViewFromNib() -> UIView {
        let bundle = Bundle(for: type(of:self))
        let nib = UINib(nibName: "NavView", bundle: bundle)
        
        // Assumes UIView is top level and only object in CustomView.xib file
        let view = nib.instantiate(withOwner: self, options: nil)[0] as! UIView
        return view
    }
    
    
    
    
}
