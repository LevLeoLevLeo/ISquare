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
            lblAnswer.text = String(format: "%f", Area.Square(txfOneSide: Con.toDouble(txfstring: txfOneSide.text ?? "0")))
        case 1:
            lblAnswer.text = String(format: "%f", Area.Rectangle(txfFirstSide: Con.toDouble(txfstring: txfOneSide.text ?? "0"), txfSecondSide: Con.toDouble(txfstring: txfSecondSide.text ?? "0")))
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
