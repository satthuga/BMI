//
//  ResultViewController.swift
//  BMI
//
//  Created by Apple on 11/06/2021.
//

import UIKit

class ResultViewController: ViewController {

    
    @IBOutlet weak var bodyConditonLabel: UILabel!
    @IBOutlet weak var commentLabel: UILabel!
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var resultBackground: UIView!
    @IBOutlet weak var reCaculate: UIButton!
    
    var data: (height: Float,weight: Int)?
    var BMI :Float = 0
    var displayBMI : Float = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let data = data else { return }
        
        BMI = Float(data.weight) / (data.height * data.height / 10000)
        
        displayBMI = Float(round(100 * BMI)/100)
        
        switch displayBMI {
        case ..<18.5:
            bmiLabel.text = "\(displayBMI)"
            bodyConditonLabel.text = "UNDERWEIGHT"
            commentLabel.text = """
                You have a underweight body.
                Increase your calories intake!
                """
        case 18.5...24.9:
            bmiLabel.text = "\(displayBMI)"
            bodyConditonLabel.text = "NORMAL"
            commentLabel.text = """
                You have a normal body weight.
                Good job!
                """
        case 25...29.9:
            bmiLabel.text = "\(displayBMI)"
            bodyConditonLabel.text = "OVERWEIGHT"
            commentLabel.text = """
                You have a overweight body.
                Excercise more!
                """
        case 30...34.9:
            bmiLabel.text = "\(displayBMI)"
            bodyConditonLabel.text = "MODERATELY OBESE"
            commentLabel.text = """
                You have Obese class 1.
                Excercise more!
                """
        case 35...39.9:
            bmiLabel.text = "\(displayBMI)"
            bodyConditonLabel.text = "SEVERELY OBESE"
            commentLabel.text = """
                You have obese class 2.
                Excercise more!
                """
            
        default:
            bmiLabel.text = "\(displayBMI)"
            bodyConditonLabel.text = "VERY SEVERELY OBESE"
            commentLabel.text = """
                You have obese class 3.
                You're going to die if you don't excercise!
                """
        }
        resultBackground.layer.cornerRadius = 5
        reCaculate.layer.cornerRadius = 5
        

        }

    @IBAction func goBackFirst(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
}
