//
//  PerformMath.swift
//  PerformMath
//
//  Created by Jared Kozar on 8/25/21.
//
import UIKit

struct PerformMath {
    
    let leftNum: Double
    let rightNum: Double
    
    func addNums() -> Double {
        return leftNum + rightNum
    }
    
    func subtractNums() -> Double {
        return leftNum - rightNum
    }
    
    func multiplyNums() -> Double {
        return leftNum * rightNum
    }
    
    func divideNums() -> Double {
        return leftNum / rightNum
    }
    
    func exponentNums() -> Double {
        return pow(leftNum, rightNum)
    }
    
    func sqrtNums() -> Double {
    
        if leftNum != 1 {
            return pow(rightNum, 1/leftNum)
        } else {
            return sqrt(rightNum)
        }
    }
    
    func modNums() -> Double {
        return leftNum.truncatingRemainder(dividingBy: rightNum)
        
    }
    
}
