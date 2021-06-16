//
//  FirstViewController.swift
//  BMI
//
//  Created by Apple on 16/06/2021.
//

import UIKit

class FirstViewController: ViewController {

    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var agePlusButton: UIView!
    @IBOutlet weak var ageMinusButton: UIView!

    @IBOutlet weak var weightMinusButton: UIView!
    @IBOutlet weak var weightPlusButton: UIView!
    @IBOutlet weak var maleBackground: UIView!
    @IBOutlet weak var femaleBackground: UIView!
    @IBOutlet weak var weightBackground: UIView!
    @IBOutlet weak var ageBackGround: UIView!
    @IBOutlet weak var heightBackground: UIView!
    @IBOutlet weak var calculateButton: UIButton!
    @IBOutlet weak var heightSlider: UISlider!
    
    var weight = 50
    var age = 20
    var height :Float = 150
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // make round corner
        maleBackground.layer.cornerRadius = 5
        femaleBackground.layer.cornerRadius = 5
        heightBackground.layer.cornerRadius = 5
        weightBackground.layer.cornerRadius = 5
        ageBackGround.layer.cornerRadius = 5
        calculateButton.layer.cornerRadius = 5
        
        weightMinusButton.layer.cornerRadius = 15
        weightPlusButton.layer.cornerRadius = 15
        ageMinusButton.layer.cornerRadius = 15
        agePlusButton.layer.cornerRadius = 15
       
        // set up button
        weightMinusButton.isUserInteractionEnabled = true
        weightPlusButton.isUserInteractionEnabled = true
        ageMinusButton.isUserInteractionEnabled = true
        agePlusButton.isUserInteractionEnabled = true
        maleBackground.isUserInteractionEnabled = true
        femaleBackground.isUserInteractionEnabled = true
        
        
        heightSlider.minimumValue = 50
        heightSlider.maximumValue = 250
        heightSlider.value = 150
        
        
        weightLabel.text = "\(weight)"
        ageLabel.text = "\(age)"
    }
    
    // height
    @IBAction func heightSlider(_ sender: UISlider) {
        height = sender.value
        heightLabel.text = "\(Int(height))"
    }
    
    // age & weight button
   
    @IBAction func weightMinusPress(_ sender: Any) {
        if weight > 20 {
            weight -= 1
            weightLabel.text = "\(weight)"
        }
    }

    
    @IBAction func weightPlusPress(_ sender: UITapGestureRecognizer) {
        if weight < 200 {
            weight += 1
            weightLabel.text = "\(weight)"
        }
    }
    
    @IBAction func ageMInusPress(_ sender: Any) {
        if age > 20 {
            age -= 1
            ageLabel.text = "\(age)"
        }
    }
    
    @IBAction func agePlusPress(_ sender: Any) {
        if age < 120 {
            age += 1
            ageLabel.text = "\(age)"
        }
    }
    
    // male & female
    @IBAction func femalePress(_ sender: Any) {
        femaleBackground.backgroundColor = UIColor(red: 0.14, green: 0.15, blue: 0.228, alpha: 1)
        maleBackground.backgroundColor = UIColor(red: 0.2, green: 0.2, blue: 0.271, alpha: 1)
    }
    
    @IBAction func malePress(_ sender: Any) {
        femaleBackground.backgroundColor = UIColor(red: 0.2, green: 0.2, blue: 0.271, alpha: 1)
        maleBackground.backgroundColor = UIColor(red: 0.14, green: 0.15, blue: 0.228, alpha: 1)
    }
    
    // go to 2nd screen
    @IBAction func gotoSecond(_ sender: Any) {
        
        let secondVC = ResultViewController()
        
        secondVC.data = (height, weight)
        
        secondVC.modalPresentationStyle = .fullScreen
        
        self.present(secondVC, animated: true, completion: nil)
    }
}
