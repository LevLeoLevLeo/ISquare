//
//  ViewController.swift
//  SquareFigure
//
//  Created by Student on 22.03.2022.
//

import UIKit

class ViewController: UIViewController {
    let Area = FigureArea()
    let Con = Convert()
    @IBOutlet weak var lblAnswer: UILabel!
    @IBOutlet weak var txfOneSide: UITextField!
    @IBOutlet weak var txfSecondSide: UITextField!
    @IBOutlet weak var btnCalsulate: UIButton!
    @IBOutlet weak var segmentcontrolSquare: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    @IBAction func btnCalculate_actnClick(_ sender: UIButton) {
        switch segmentcontrolSquare.selectedSegmentIndex
        {
        case 0:
            lblAnswer.text = Con.toString(txfDouble1: Area.Square(txfOneSide: Con.toDouble(txfString: txfOneSide.text ?? "0")))
        case 1:
            lblAnswer.text = Con.toString(txfDouble1: Area.Rectangle(txfFirstSide: Con.toDouble(txfString: txfOneSide.text ?? "0"), txfSecondSide: Con.toDouble(txfString: txfSecondSide.text ?? "0")))
        default:
            print ("Ошибка")
        }
    }
    
    @IBAction func segmentcontrolSquare_actnValueChange(_ sender: UISegmentedControl) {
        switch segmentcontrolSquare.selectedSegmentIndex
        {
        case 0: txfSecondSide.isHidden = true
        case 1: txfSecondSide.isHidden = false
        default: print ("Ошибка")
        }
    }
}

