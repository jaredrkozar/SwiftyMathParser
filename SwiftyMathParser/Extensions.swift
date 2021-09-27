//
//  Extension.swift
//  Extension
//
//  Created by Jared Kozar on 8/26/21.
//
import Foundation

extension Double {
    public func round(places: Int) -> Double {
        let selectedRound = pow(10.0, Double(places))
        
        return (self * selectedRound).rounded() / selectedRound

    }
}

enum Operators: String {
    case leftparentheses = "("
    case rightparentheses = ")"
    case add = "+"
    case subtract = "-"
    case multiply = "*"
    case multiplyalt = "x"
    case divide = "/"
    case exponent = "^"
    case sqrt = "s"
    case sqrtalt = "√"
    case mod = "%"
}

extension String {
    func checkAppearanceOf(char: Character) -> Int {
        return Array(self.lowercased()).reduce(into: 0) { if $1 == char { $0 += 1} }
    }
}
