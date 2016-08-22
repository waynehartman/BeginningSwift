import Foundation

/*  if/else  */

let name = "Wayne"

if name.characters.count > 5 {
    print("Name is long enough")
} else {
    print("Name is too short")
}


/*  if let  */

var nickname: String? = "Jack"

if let name = nickname {
    print(name)
}

/*  for-in sequence  */

for i in 0...5 {
    print(i)
}

let fruits = ["Apple", "Banana", "Orange"]

for i in 0..<fruits.count {
    print(fruits[i])
}



/*  for-in array  */

for fruit in fruits {
    print(fruit)
}





/*  for-in dictionary  */

let inventory = [
    "Apple" : 10,
    "Orange" : 20,
    "Banana" : 120
]

for (fruit, count) in inventory {
    print("\(fruit): \(count)")
}

/*  Guard  */

for (fruit, count) in inventory {
    guard count > 50 else {
        continue
    }

    print("well stocked: \(fruit) (\(count))")
}


/*  while  */

var i = 5

while i > 0 {
    print(i)

    i = i - 1
}





/*  repeat-while  */

var j = -5

repeat {
    print(j)
    j += 1
} while j < 0






/*  Switch  */

let desert = "ice cream"

switch desert {
case "donut":
    print("nom!")
case "pie", "ice cream":
    print("yum!")
case "cake":
    print("yuck!")
default:
    print("mmmmmmm!")
}







/*  Switch Interval Matching  */

let pokeballs = 0

switch pokeballs {
case 100..<200:
    print("That's a lot of pokeballs!")
case 20...99:
    print("Looks like you have quite a few pokeballs there.")
case 10...19:
    print("You're getting low on pokeballs")
case 1...9:
    print("Uh, you're almost out")
case 0:
    print("You don't have any pokeballs")
default:
    print("I think you're cheating")
}



