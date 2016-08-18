
import Foundation



class MediaItem {
    var name: String
    init(name: String) {
        self.name = name
    }
}

class Movie: MediaItem {
    var director: String
    init(name: String, director: String) {
        self.director = director
        super.init(name: name)
    }
}

class Song: MediaItem {
    var artist: String
    init(name: String, artist: String) {
        self.artist = artist
        super.init(name: name)
    }
}

let library = [
    Movie(name: "Casablanca", director: "Michael Curtiz"),
    Song(name: "Blue Suede Shoes", artist: "Elvis Presley"),
    Movie(name: "Citizen Kane", director: "Orson Welles"),
    Song(name: "The One And Only", artist: "Chesney Hawkes"),
    Song(name: "Never Gonna Give You Up", artist: "Rick Astley")
]

let someObjects: [AnyObject] = [
    Movie(name: "2001: A Space Odyssey", director: "Stanley Kubrick"),
    Movie(name: "Moon", director: "Duncan Jones"),
    Movie(name: "Alien", director: "Ridley Scott")
]

/*  Checking Type  */

var songCount = 0
var movieCount = 0

for item in library {
    if item is Movie {
        movieCount += 1
    } else if item is Song {
        songCount += 1
    }
}

print(songCount)
print(movieCount)

/*  Downcasting  */

for item in library {
    if let movie = item as? Movie {
        print("movie: \(movie.name) director:\(movie.director)")
    } else if let song = item as? Song {
        print("song: \(song.name) artist:\(song.artist)")
    }
}

/*  Forced Downcasting with `AnyObject`  */

for item in someObjects {
    let movie = item as! Movie

    print("movie: \(movie.name) director:\(movie.director)")
}

/*  Downcasting with `Any`  */


/* ---------------------------------------------------------------- */

var things = [Any]()

things.append(0)
things.append(0.0)
things.append(42)
things.append(3.14159)
things.append("hello")
things.append(Movie(name: "Ghostbusters", director: "Ivan Reitman"))
things.append({ (name: String) -> String in "Hello, \(name)" })

/* ---------------------------------------------------------------- */

for thing in things {
    switch thing {
    case 0 as Int:
        print("Zero!")
    case let someInt as Int:
        print("Some other integer: \(someInt)")
    case let string as String:
        print("A string: \(string)")
    case let double as Double:
        print("A double: \(double)")
    case let movie as Movie:
        print("movie: \(movie.name) director:\(movie.director)")
    default:
        print("Something else: \(thing)")
    }
}

