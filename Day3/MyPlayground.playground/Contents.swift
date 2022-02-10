import UIKit
import Foundation


protocol Increasing{
    func increasedValue(amount:Int) -> Int
}

extension Int : Increasing{
    func increasedValue(amount: Int) -> Int {
        Int(self) + amount
    }
}

extension Double : Increasing{
    func increasedValue(amount: Int) -> Int {
        return Int(increased(amount: self))
    }
    
    func increased(amount: Double) -> Double {
        Double(self) + Double(amount)
    }
}

10.increasedValue(amount: 3)
20.5.increasedValue(amount: 4)

