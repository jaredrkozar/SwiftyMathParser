//
//  Parser.swift
//  Parser
//
//  Created by Jared Kozar on 8/24/21.
//
import UIKit

public class Parser {

    public static func parseEquation(equation: String) -> Double {

        var newequation = equation.replacingOccurrences(of: " ", with: "")

        var answer: Double = 0
        
        if newequation.contains("(") {
            if newequation.checkAppearanceOf(char: "(") - newequation.checkAppearanceOf(char: ")") == 0 {
                while newequation.contains("(") {
                    
                    let index = newequation.lastIndex(of: "(")!
                    let end = newequation.firstIndex(of: ")")!
                    
                    let equationwoparens = String(newequation[
                        newequation.index(after: index)..<end])
 
                    newequation.replaceSubrange(index..<newequation.index(after: end), with: "\(Parser.parseEquation(equation: equationwoparens))")
                }
            } else {
                print ("The number of closed parentheses does not equal the number of open parentheses.")
                return 0
            }
            
            answer = Double(newequation)!
        }
        
        if newequation.contains(Operators.add.rawValue) {
        
            let addEq = newequation.split(separator: "+")

            answer = PerformMath(leftNum: Double(addEq[0])!, rightNum: Double(addEq[1])!).addNums()
            
        }
        
        if newequation.contains(Operators.subtract.rawValue) {
            let subtractEq = newequation.split(separator: "-")
  
            answer = PerformMath(leftNum: Double(subtractEq[0])!, rightNum: Double(subtractEq[1])!).subtractNums()
            
        }
        
        if newequation.contains(Operators.multiply.rawValue) || newequation.contains(Operators.multiplyalt.rawValue) {
            if newequation.contains("x") {
                newequation = newequation.replacingOccurrences(of: "x", with: "*")
            }
            let multEq = newequation.split(separator: "*")
   
            answer = PerformMath(leftNum: Double(multEq[0])!, rightNum: Double(multEq[1])!).multiplyNums()
            
        }
        
        if newequation.contains(Operators.divide.rawValue) {
            let divEq = newequation.split(separator: "/")
           
            answer = PerformMath(leftNum: Double(divEq[0])!, rightNum: Double(divEq[1])!).divideNums()
        }
        
        if newequation.contains(Operators.sqrt.rawValue) || newequation.contains(Operators.sqrtalt.rawValue) {
            
            if newequation.contains("√") {
                newequation = newequation.replacingOccurrences(of: "√", with: "s")
            }
            
            var sqrtEq = newequation.split(separator: "s")

            if sqrtEq[0] == "0" {
                print("This expression has a square root to the 0th power, so the equation will always equal 1.")
            }
            
            if sqrtEq.count == 1 {
                sqrtEq.insert("1", at: 0)
            }
            
            answer = PerformMath(leftNum: Double(sqrtEq[0])!, rightNum: Double(sqrtEq[1])!).sqrtNums()
        }
        
        if newequation.contains(Operators.exponent.rawValue) {
            let expEq = newequation.split(separator: "^")
            
            answer = PerformMath(leftNum: Double(expEq[0])!, rightNum: Double(expEq[1])!).exponentNums()
        }
        
        if newequation.contains(Operators.mod.rawValue) {
            let modEq = newequation.split(separator: "%")
           
            answer = PerformMath(leftNum: Double(modEq[0])!, rightNum: Double(modEq[1])!).modNums()
        }
        return answer
    }

    public static func checkEquation(equation: String) -> Bool {

        if equation.contains("=") {
            let newequation = equation.trimmingCharacters(in: .whitespacesAndNewlines)
            let leftSideOfEquation = newequation.split(separator: "=")

           if Parser.parseEquation(equation: String(leftSideOfEquation[0])) == Double(leftSideOfEquation[1]) {
                return true
            } else {
                return false
            }
        } else {
            print("This equation does not contain an equals sign. Please enter an equals sign and what the expression should equal and try again.")
            return false
        }
    }
}
