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
    let execution = mainExecution()
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
        lblAnswer.text = execution.GetAnswerSquare(segmentedControl: segmentcontrolSquare, firstSide: txfOneSide.text ?? "0", secondSide: txfSecondSide.text ?? "0")
    }
    
    @IBAction func segmentcontrolSquare_actnValueChange(_ sender: UISegmentedControl) {
        execution.changeFigure(segmentControl: segmentcontrolSquare, textField: txfSecondSide)
    }
}

