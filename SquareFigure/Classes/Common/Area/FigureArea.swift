//
//  FigureArea.swift
//  SquareFigure
//
//  Created by Student on 22.03.2022.
//

import Foundation
class FigureArea
{
    let SquareAre = SquareArea()
    let RectangleAre = RectangleArea()
    
    //Возвращает значение площади квадрата
    func Square(txfOneSide: Double) -> Double{
        return SquareAre.GetArea(OneSide: txfOneSide)
    }
    
    //Вовзращает значение площади прямоугольника по двум сторонам
    func Rectangle(txfFirstSide: Double, txfSecondSide: Double) -> Double{
        return RectangleAre.GetArea(FirstSide: txfFirstSide, SecondSide: txfSecondSide)
    }
}
