import Foundation

struct Person {
    let firstName: String
    let lastName: String
    let age: Int
}

let people = [Person(firstName: "Pedro", lastName: "Manning", age: 35),
              Person(firstName: "Johnnie", lastName: "Mason", age: 19),
              Person(firstName: "Wendy", lastName: "Graham", age: 5),
              Person(firstName: "Lori", lastName: "Cross", age: 89),
              Person(firstName: "Darla", lastName: "Carpenter", age: 65),
              Person(firstName: "Emmett", lastName: "Sutton", age: 20),
              Person(firstName: "Cora", lastName: "Mcdaniel", age: 36),
              Person(firstName: "Lila", lastName: "Bowman", age: 22),
              Person(firstName: "Hazel", lastName: "Arnold", age: 10),
              Person(firstName: "Willie", lastName: "Underwood", age: 41),
              Person(firstName: "Gustavo", lastName: "Tate", age: 102),
              Person(firstName: "Stephen", lastName: "Houston", age: 2),
              Person(firstName: "Angelo", lastName: "Turner", age: 17),
              Person(firstName: "Erica", lastName: "Bradley", age: 35),
              Person(firstName: "Janice", lastName: "Wright", age: 29),
              Person(firstName: "Arnold", lastName: "Clayton", age: 36),
              Person(firstName: "Alfredo", lastName: "Vaughn", age: 14),
              Person(firstName: "James", lastName: "Cook", age: 39),
              Person(firstName: "Christie", lastName: "Chapman", age: 52),
              Person(firstName: "Karen", lastName: "Torres", age: 69),
              Person(firstName: "Ramona", lastName: "Gross", age: 90),
              Person(firstName: "Philip", lastName: "Ford", age: 65),
              Person(firstName: "Lawrence", lastName: "Arnold", age: 11),
              Person(firstName: "Ebony", lastName: "Rhodes", age: 30),
              Person(firstName: "Sandra", lastName: "Manning", age: 33)]

/*  Map  */

let allAges = people.map({ $0.age })
print(allAges)


/*  Filter  */

let filteredPeople = people.filter({$0.age >= 18})
print(filteredPeople)


/*  Reduce  */

let combinedAges = people.reduce(0, {$0 + $1.age})
print(combinedAges / people.count)

/*  Sorting  */

let sorted = people.sorted(by: { $0.age < $1.age })

print(sorted)

/*
 *  EXERCISE:
 *  Create a report to only include people with *odd* ages between 17-35, sort them by last name, first name.
 *  Then combine them into a single string that prints each person on a separate line, showing last name, first name, age
 *
 *  For example:
 *
 *  Manning, Sandra, 35
 *  Mason, Johnnie, 19
 *  Turner, Angelo, 17
 */

let filteredSorted = people.filter {
    switch $0.age {
    case 17...35:
        return $0.age % 2 != 0
    default:
        return false
    }
    }.sorted { $0.lastName == $1.lastName ? $0.firstName < $1.firstName : $0.lastName < $1.lastName }.reduce("\n\nReport:\n\n", { $0 + "\($1.lastName), \($1.firstName), \($1.age)\n" })

print(filteredSorted)

