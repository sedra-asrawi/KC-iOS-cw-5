import UIKit


let family = ["Mohammad","Rattiba","Abrar","Abdullah","Afnan","Abdulrahman","Sedra"]
print(family.count)
var evenNumbers = [2,4,6,8,10,12]
evenNumbers.remove(at: 1)
evenNumbers += [16,18,20,22]

print(evenNumbers.randomElement() ?? 0)
evenNumbers.removeAll()
 
var Numbers = [1,2,3,4,5]
for i in 1...5 {
    print(i)
}
Numbers.append(6)
Numbers.append(7)
Numbers.append(8)
Numbers.append(9)
Numbers.append(10)

for i in Numbers{
    print(i)
}

for i in Numbers {
    if i%2 == 0 {
        print("this is even number", i)
}
}

