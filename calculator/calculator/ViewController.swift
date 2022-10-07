//
//  ViewController.swift
//  calculator
//
//  Created by Apple on 06/10/22.
//

import UIKit

class ViewController: UIViewController {
    var numberonscreen: Double = 0
    var previousnumber: Double = 0
    var mathoperation = false
    var operation = 0

    @IBOutlet weak var calclabel: UILabel!
    @IBAction func operatorpbtn(_ sender: UIButton) {
        if calclabel.text != " " && sender.tag != 16 && sender.tag != 15{
            if sender.tag == 11{
                calclabel.text = calclabel.text! + String("+")
            } // add
            else if sender.tag == 12{
                calclabel.text = calclabel.text! + String("-")
            } // sub
            else if sender.tag == 13{
                calclabel.text = calclabel.text! + String("/")
            }
            else if sender.tag == 14{
                calclabel.text = calclabel.text! + String("*")
            }// division
            operation = sender.tag
            mathoperation = true
        }
            else if sender.tag == 15{
                if operation == 11{
                    calclabel.text = String(previousnumber + numberonscreen)
                    previousnumber = Double(calclabel.text!)!
                }
                else if operation == 12{
                    calclabel.text = String(previousnumber - numberonscreen)
                    previousnumber = Double(calclabel.text!)!
                }
                else if operation == 13{
                    calclabel.text = String(previousnumber / numberonscreen)
                    previousnumber = Double(calclabel.text!)!
                }
                else if operation == 14{
                    calclabel.text = String(previousnumber * numberonscreen)
                    previousnumber = Double(calclabel.text!)!
                }
            }
        else if sender.tag == 16{
            calclabel.text = " "
            previousnumber = 0
            numberonscreen = 0
            operation = 0
        }
    }
    @IBAction func opprandbtn(_ sender: UIButton) {
        if mathoperation == true{
            calclabel.text = String(sender.tag-1)
            numberonscreen = Double(calclabel.text!)!
            mathoperation = false
        }
        else{
        calclabel.text = calclabel.text! + String(sender.tag-1)
        previousnumber = Double(calclabel.text!)!
    }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}
