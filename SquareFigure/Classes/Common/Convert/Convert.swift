//
//  Convert.swift
//  SquareFigure
//
//  Created by Student on 22.03.2022.
//

import Foundation
let ToDouble = StringToDouble()
let ToString = DoubleToString()

class Convert
{
    
    func toDouble(txfString: String) -> Double{
       return ToDouble.conToDouble(string: txfString)
    }
    func toString(txfDouble1: Double) -> String{
        return ToString.DbleToStrng(double: txfDouble1)
    }
    
}
