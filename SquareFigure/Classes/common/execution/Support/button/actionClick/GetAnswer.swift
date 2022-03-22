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
    var answer: String = ""
    func BtnClickAnswer(segmentcontrol: UISegmentedControl, FirstSide: String, SecondSide: String) -> String{
        
        switch segmentcontrol.selectedSegmentIndex
        {
        case 0:
            answer = Con.toString(txfDouble1: Area.Square(txfOneSide: Con.toDouble(txfString: FirstSide)))
        case 1:
            answer = Con.toString(txfDouble1: Area.Rectangle(txfFirstSide: Con.toDouble(txfString: FirstSide), txfSecondSide: Con.toDouble(txfString: SecondSide)))
        default:
            print ("Ошибка")
        }
        return answer
    }
}
