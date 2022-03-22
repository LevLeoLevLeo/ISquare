//
//  changeTypeFigure.swift
//  SquareFigure
//
//  Created by Student on 22.03.2022.
//

import Foundation
import UIKit
class changeTypeFigure{
    func figureTypeChange (segmentControl: UISegmentedControl, textField: UITextField){
        switch segmentControl.selectedSegmentIndex
        {
        case 0: textField.isHidden = true
        case 1: textField.isHidden = false
        default: print ("Ошибка")
        }
    }
}
