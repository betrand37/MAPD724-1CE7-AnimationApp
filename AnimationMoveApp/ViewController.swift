//
//  ViewController.swift
//  AnimationMoveApp
//
//  Created by Kobbie on 19/03/2023.
//

import UIKit

import GLKit

class ViewController: UIViewController {
    
    @IBOutlet var myLabel: UILabel!
    
    @IBOutlet var myTextField: UITextField!
    
    @IBOutlet var myImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let rotateMe = GLKMathDegreesToRadians(45)
        
        UIView.animate(withDuration: 2.0, delay: 0.0,
        options: [.repeat, .autoreverse], animations: {
               self.myLabel.alpha = 0.0
               self.myLabel.backgroundColor = UIColor.lightGray
        }, completion: nil)
        
        UIView.animate(withDuration: 3.4, delay: 2.3,
        options: [.repeat, .autoreverse], animations: {
         self.myLabel.transform = CGAffineTransform(rotationAngle: CGFloat(rotateMe))
        }, completion: nil)
        
        UIView.animate(withDuration: 3.5, delay: 0.45,
        options: [.repeat, .autoreverse], animations: {
         self.myTextField.transform = CGAffineTransform(rotationAngle: CGFloat(-rotateMe))
        }, completion: nil)
          
        UIView.animate(withDuration: 2.5, delay: 1.5,
        options: [.repeat, .autoreverse], animations: {
         self.myImageView.transform = CGAffineTransform(rotationAngle: CGFloat(rotateMe))
        }, completion: nil)
       }
       
       override func viewWillAppear(_ animated: Bool) {
        myLabel.center.x -= view.bounds.width
        myTextField.center.x -= view.bounds.width
        myImageView.center.x -= view.bounds.width
       }


}

