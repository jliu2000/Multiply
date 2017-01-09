//
//  ViewController.swift
//  Multiply
//
//  Created by jliu on 9/18/16.
//  Copyright © 2016 Jason Liu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var value1: UITextField!
    @IBOutlet weak var value2: UITextField!
    @IBOutlet weak var product: UITextField!
    @IBOutlet weak var imageView: UIImageView!
   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    override func viewDidLoad() {

        super.viewDidLoad()
}
    
@IBAction func multiply(_ sender: AnyObject) {

    if let val1 = Int(value1.text!){
        if let val2 = Int(value2.text!) {
            let theProduct = val1*val2
            product.text = String(theProduct)
            
            if theProduct == 64 {
                imageView.image = UIImage(named: "Image")
            
            }
            else if theProduct % 2 != 0 {
                imageView.image = UIImage(named: "Image2")
            }
            else if theProduct % 2 == 0 {
                imageView.image = UIImage(named: "Image3")
            }
        }
        }
    
    
    }
    @IBAction func addition(_ sender: AnyObject) {
        if let val1 = Int(value1.text!){
            if let val2 = Int(value2.text!){
                let sum = val1 + val2
                product.text = String(sum)
                if sum == 64 {
                    imageView.image = UIImage(named: "Image")
       
                }
                else if sum % 2 != 0 {
                    imageView.image = UIImage(named: "Image2")
                }
                else if sum % 2 == 0 {
                    imageView.image = UIImage(named: "Image3")
                }

            }
        }
        
    }
    @IBAction func division(_ sender: AnyObject) {
        if let val1 = Int(value1.text!){
            if let val2 = Int(value2.text!){
                let quotient = val1/val2
                product.text = String(quotient)
                if quotient == 64 {
                    imageView.image = UIImage(named: "Image")
                    
                }
                else if quotient % 2 != 0 {
                    imageView.image = UIImage(named: "Image2")
                }
                else if quotient % 2 == 0 {
                    imageView.image = UIImage(named: "Image3")
                }

            }
        }
    }
    @IBAction func subtraction(_ sender: AnyObject) {
        if let val1 = Int(value1.text!){
            if let val2 = Int(value2.text!){
                let difference = val1 - val2
                product.text = String(difference)
                if difference == 64 {
                    imageView.image = UIImage(named: "Image")
                    
                }
                else if difference % 2 != 0 {
                    imageView.image = UIImage(named: "Image2")
                }
                else if difference % 2 == 0 {
                    imageView.image = UIImage(named: "Image3")
                }

            }
        }
}
}
