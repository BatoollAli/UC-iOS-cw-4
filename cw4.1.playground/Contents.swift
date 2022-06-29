import UIKit

var family = [ "Hussain", "Abyar", "Ismail", "Zainab","BAtool"]
print(family)
var evenNumbers = [2,4,6,8,10,12]
evenNumbers.remove(at: 1)
evenNumbers += [16,18,20,22]
print(evenNumbers[5])
evenNumbers.removeAll()

var numbers = [ 1,2,3,4,5 ]

for number in numbers{
    print(number)
}

//numbers.append(6)
//numbers.append(7)
//numbers.append(8)
//numbers.append(9)
//numbers.append(10)


for number2 in 6...10 {
    numbers.append(number2)
    print(number2)
}


