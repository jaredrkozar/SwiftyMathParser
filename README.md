# SwiftyMathParser
Simple Swift math parser

**Table of Contents**
  * [What you can do with SwiftyMathParser](#what-you-can-do-with-swiftymathparser)
  * [How to use](#how-to-use)
  * [How to download](#how-to-download)
  * [About the author](#about-the-author)
  
## What you can do with SwiftyMathParser

With SwiftyMathParser, you can compute:

- addition

- subtraction

- multiplication

- division

- roots (square roots, cubic roots, quadratic roots, etc.)

- exponents

- modulo (also known as the remainder)

## How to use

You can perform three actions with SwiftyMathParser: calculating an expression and checking if an expression is equal to a value, and rounding numbers. 

**Calculating an Expression**

To calculate an expression, you can simply use

```swift
let expression = Parser.parseEquation(equation: "2+4")
print(expression)
```
    
This expression would print out 6.

You can also do more complicated expressions, such as:

```swift
let complicatedexpression = Parser.parseEquation(equation: "(((3+5)^2)%9)")
print(complicatedexpression)
```
        
This expression would print out 1.

Note: This function returns a decimal value, and you can round the output using the .round function (described below).
**Checking an expression**

You can also check an expression to see if is equal to a value. This function outputs a boolean; if the two values are equal, the function returns true, and if the two values are not equal not equal, the function returns false. Here is an example:

```swift     
let checkexpression = Parser.checkEquation(equation: "3+2=6")
print(checkexpression)
```
        
Note: you must include an equals sign. If you don't, the function will return false, and the console will let you know an equals sign is missing.

**Rounding numbers**

To round numbers, you simply call the .round method on any decimal value (such as after the parseEquation function) to round the output. FOr examplle, you can say 

```swift
let roundNumber = Parser.parseEquation(equation: "6/1.23").round(places: 3)
```

to round the value to the third decimal place. Likewise, you can replace the value with any number to round the value to that many decimal places.

## How to download

You can download this CocoaPod by adding the following line to your Podfile:

```swift
pod 'MathParser'
```

## About the author

This CocoaPod was created by Jared Kozar. You can email me at jared.rkozar@gmail.com
