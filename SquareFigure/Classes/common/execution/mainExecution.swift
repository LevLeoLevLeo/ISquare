//
//  MainExecution.swift
//  SquareFigure
//
//  Created by Student on 22.03.2022.
//

import Foundation
import UIKit
class mainExecution{
    let GetSquareAnswer = BtnClick()
    let changeSegmentControlSquare = changeTypeFigure()
    func GetAnswerSquare(segmentedControl: UISegmentedControl, firstSide: String, secondSide: String) -> String {
        return GetSquareAnswer.BtnClickAnswer(segmentcontrol: segmentedControl, FirstSide: firstSide, SecondSide: secondSide)
    }
    func changeFigure(segmentControl: UISegmentedControl, textField: UITextField){
        switch segmentControl.selectedSegmentIndex
        {
        case 0: textField.isHidden = true
        case 1: textField.isHidden = false
        default: print ("Ошибка")
        }
    }
}
