//: A Cocoa based Playground to present user interface

import AppKit
import PlaygroundSupport

//Exercise1
//Write a generic function which should be able to swap the contents of any two variables. Demonstrate it by passing integers, doubles and string types of variables.

func swapGenerics<T>(a: inout T, b: inout T) {
    let temp = a
    a = b
    b = temp
}
var numb1 = 100
var numb2 = 200

print("Before Swapping Int values are: \(numb1) and \(numb2)")
swapGenerics(a: &numb1, b: &numb2)
print("After Swapping Int values are: \(numb1) and \(numb2)")

var str1 = "Generics"
var str2 = "Functions"

print("Before Swapping String values are: \(str1) and \(str2)")
swapGenerics(a: &str1, b: &str2)
print("After Swapping String values are: \(str1) and \(str2)")

var d1 = 4.5
var d2 = 5.9

print("Before Swapping String values are: \(d1) and \(d2)")
swapGenerics(a: &d1, b: &d2)
print("After Swapping String values are: \(d1) and \(d2)")

//Exercise2
//Define a function – SumAvgArray(values: [Int] ) -> ( Int, Double) which calculates the sum and average of an integer array and return – sum and average ( two values ) as tuple

func SumAvgArray(values:[Int] ) -> (Int,Double){
    var sum = 0
    for value in values{
        sum = sum + value
    }
    return (sum,Double(sum)/Double(values.count))
}
var result = SumAvgArray(values:[17,18,19,20])
print("Sum of 17, 18 ,19 and 20 is \(result.0) and average is \(result.1)")
