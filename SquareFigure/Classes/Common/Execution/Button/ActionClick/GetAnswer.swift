//
//  BtnClick.swift
//  SquareFigure
//
//  Created by Student on 22.03.2022.
//

import Foundation
import UIKit


class BtnClick{
    let Area = FigureArea()
    let Con = Convert()
    var text: String = ""
    func BtnClickAnswer(segmentcontrol: UISegmentedControl, txfOne: UITextField, txfSecond: UITextField) -> String{
        
        switch segmentcontrol.selectedSegmentIndex
        {
        case 0:
            text = Con.toString(txfDouble1: Area.Square(txfOneSide: Con.toDouble(txfString: txfOne.text ?? "0")))
        case 1:
            text = Con.toString(txfDouble1: Area.Rectangle(txfFirstSide: Con.toDouble(txfString: txfOne.text ?? "0"), txfSecondSide: Con.toDouble(txfString: txfSecond.text ?? "0")))
        default:
            print ("Ошибка")
        }
        return text
    }
}
