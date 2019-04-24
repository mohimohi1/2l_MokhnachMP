import UIKit


// 1ое залдание

func defineNumber (number:Int) {
    
    (number % 2) > 0 ? print ("Число нечетное") : print("Число четное")
}

defineNumber(number: 8)


//2ое задание

func defineThree (number1:Int) {
    
    (number1 % 3) == 0 ? print("Число делится на 3 без остатка") : print("Число не делится нацело на 3")
}

defineThree(number1: 9)

//3ое задание

var numberArray:[Int] = []

for i in 1...100 {
    
    numberArray.append(i)
    
}


//4ое задание

for (index, value) in numberArray.enumerated() {
    if (value % 2) > 0 {
        numberArray.remove(at: numberArray.index(of: value)!)
    } else if (value % 3) == 0 {
        numberArray.remove(at: numberArray.index(of: value)!)
    }
}
numberArray


//5ое задание


func appendFibonacci (n: Int) -> (Double) {
    if (n<3) {
        return 1
    } else {
        var Fn1 : Double = 1
        var Fn2 : Double = 1
        var Fn:Double
        
        for _ in 3...n {
            Fn = Fn1+Fn2
            Fn1 = Fn2
            Fn2 = Fn
        }
        return Fn2
    }
}

var fiboArray = [Double]()
fiboArray.append(0)
var n  = 100
for i in 1...n {
    fiboArray.append(appendFibonacci(n: i))
}
print(fiboArray)



// 6ое задание

func Numbers (num: Int) -> Bool {
    if num < 2 {
        return false
    }
    for i in 2..<num {
        if num % i == 0 {
            return false
        }
    }
    
    return true
}
func NumbersArray () -> [Int] {
    var results = [Int]()
    var i = 2
    while results.count < 100 {
        if Numbers(num: i) {
            results.append(i)
        }
        i += 1
    }
    
    return results
}
print (NumbersArray())

