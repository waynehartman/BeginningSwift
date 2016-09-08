import Foundation


/*  Arrays  */

let greetings = ["Hello", "Howdy", "Hola"]

var salutations = greetings
salutations.append("kacua'chin")

print(salutations)

salutations.removeLast()

print(salutations)

var emptyArray = [String]()

/*  Dictionaries  */

let dict = [ "Wayne" : 25,
             "Jakob" : 19,
             "Kenner" : 12]

print(dict)

var mutableDict = [ "Erin" : 4]
mutableDict["Seth"] = 16

let score = mutableDict["Erin"]
print(score)

var emptyDict = [String : Int]()

/*  Sets  */

var set = Set<String>()
set.insert("Goodbye")
set.insert("Adios")




