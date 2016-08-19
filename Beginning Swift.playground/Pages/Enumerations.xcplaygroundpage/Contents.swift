
import Foundation



/*  Syntax */

enum Planet {
    case mercury
    case venus
    case earth
    case mars
    case jupiter
    case saturn
    case uranus
    case neptune
}

print(Planet.earth)

/*  Enums + Switch  */

let planet = Planet.uranus

switch planet {
case .mercury:
    print("I have no atmosphere. :(")
case .venus:
    print("HOT! HOT! HOT!")
case .earth:
    print("Home sweet home.")
case .mars:
    print("Candy bars")
case .jupiter:
    print("I'm so big, look at me!")
case .saturn:
    print("Only cool because of my rings")
case .uranus:
    print("The punch line of too many jokes.")
case .neptune:
    print("More ice than liquid water.")
}



/*  Implicit Values  */

enum VideoQuality: Int {
    case standardDefinition
    case highDefinition720
    case highDefinition1080
    case superHighDefinition2k
}

let quality = VideoQuality.highDefinition720

print(quality.rawValue)


/*  Explicit Values  */

enum NinjaTurtle: String {
    case michelangelo = "Michelangelo"
    case donatello = "Donatello"
    case leonardo = "Leonardo"
    case rafael = "Rafael"
}

let turtle = NinjaTurtle.michelangelo
print(turtle.rawValue)

let leo = NinjaTurtle.init(rawValue: "Rafael")
print(leo!.rawValue)


/*  Enums + Functions  */

enum MobilePhone: String {
    case iPhone
    case android
    case windowsPhone

    func uppercased() -> String {
        return self.rawValue.uppercased()
    }
}

let phone = MobilePhone.android
print(phone.uppercased())

/*  Associated Values  */

enum PokemonFaction {
    case valor(String, UInt)
    case mystic(String, UInt)
    case instinct(String, UInt)
}

let faction = PokemonFaction.valor("WayneHartman", 25)

switch faction {
case .valor(let username, let level):
    print("Valor rocks! \(username), Level \(level)")
default:
    print("The bad guys...")
}

/*  Raw Values  */

enum PrimaryColor: Int {
    case red
    case yellow
    case blue
}

let color = PrimaryColor(rawValue: 2)
print(color)

let badColor = PrimaryColor(rawValue: 10)
print(badColor)
