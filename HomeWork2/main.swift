//
//  main.swift
//  HomeWork2
//
//  Created by Сайфуллин Ринат on 01.06.2022.
//

import Darwin
import CoreFoundation


// Задание 1
func evenOdd (Chislo digit: Int) -> Bool {
    
    if digit % 2 == 0 {
        return true
    }
    else {
        return false
    }
}

// Задание 2

func DevidedByThree (Chilsho digit: Int) -> Bool {
    
    if digit % 3 == 0 {
       return true
    }
    else
    {
       return false
    }
}



// Задание 3

var myArray: Array<Int> = []

for index in 0...99 {
    myArray.append(index)
   
}




// Задание 4
var arrayLength = myArray.count-1
var currentIndex = 0

for k in 0...arrayLength {

    if DevidedByThree(Chilsho: myArray[currentIndex]) ||
        evenOdd(Chislo: myArray[currentIndex]) {
            
        myArray.remove(at: currentIndex)
        arrayLength -= 1
               
    }
    else {
        currentIndex += 1
    }
}

for k in 0...arrayLength {
    
    print (myArray[k])
    
}


// Задание 5
var myArray2: Array<Double> = []



func fibonacci(_ i: Double) -> Double {
    if i < 2 { return i }
    else { return fibonacci(i - 1) + fibonacci(i - 2)}
}

for k in 1...50 {
    myArray2.append(fibonacci(Double(k)))
    print("Итерация \(k)")
}

print ("Фибоначи")
for myArray in myArray2 {
    print(myArray)
}

// Задание 6


var myArray3: Array<Int> =  []


for k in 0...100 {
    myArray3.append(k)
}

var p=2
var count = myArray3.count-1

var digitFound: Bool = true




while p <= (myArray3.count-1)/2{
    
    if myArray3[p] != 0 {
        var j = p + p

        while j <= myArray3.count-1 {
            myArray3 [j] = 0
            j += p
        }
       
    }
    p += 1
   
    
}

var max = 0

for k in 0...myArray3.count-1 {
    if (max < myArray3[k]) {
        max =  myArray3[k]
    }
    
}

print ("Максимальное число: \(max)" )









