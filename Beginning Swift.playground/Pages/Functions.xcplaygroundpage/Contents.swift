import Foundation


/*  Declaring Functions */

func doWork() {
    print("doing some work")
}

func doMoreWork() -> String {
    return "did the needful"
}

func doMoreWork(job: String, time: UInt) -> String {
    return "did \(job) for \(time) seconds"
}

/*  guard */

func process(value: Int) {
    guard value > 5 else {
        return
    }

    print(value)
}

/*  Guard  */





/*  Calling Functions  */

doWork()

let result = doMoreWork()
print(result)

doMoreWork(job: "sweeping", time: 5)

let moreResult = doMoreWork(job: "scrubbing", time: 10)
print(result)


/*  Function argument names vs. labels  */

func scrub(for time: Int) {
    print("I hate scrubbing for \(time) minutes")
}

scrub(for:5)



/*  Tuples  */

func calculateStats(numbers:[Int]) -> (min: Int, max: Int, avg: Int) {
    var min = 0;
    var max = 0;
    var total = 0;
    
    for number in numbers {
        if number < min {
            min = number
        }
        
        if number > max {
            max = number
        }

        total += number
    }

    let avg = total / numbers.count

    return (min, max, avg)
}

let stats = calculateStats(numbers: [1, 10, -9, 100])

print("min: \(stats.min)")
print("max: \(stats.max)")
print("avg: \(stats.avg)")


/*  Variadic Parameters  */

func calculateAverage(numbers: Double...) -> Double {
    var total: Double = 0

    for number in numbers {
        total += number
    }

    return total / Double(numbers.count)
}


/*  In-Out Parameters  */

var names = ["Wayne", "Aaron", "Seth"]

var copy = names
copy.removeLast()

print(names)
print(copy)

func removeByRef( items: inout [String]) {
    items.removeFirst()
}

removeByRef(items: &names)

print(names)






/*  Functions as types  */

func add(left: Int, right: Int) -> Int {
    return left + right
}

func subtract(left: Int, right: Int) -> Int {
    return left - right
}

var arithmatic = add
arithmatic(5, 5)

arithmatic = subtract
arithmatic(4, 2)



/*  Functions as parameters  */

func doSomething(function: (Int, Int) -> Int) -> Int {
    return function(5,5)
}

doSomething(function: add)
doSomething(function: subtract)


/*  Functions as return types  */

typealias IntegerArithmatic = (Int, Int) -> Int

func doTheNeedful() -> IntegerArithmatic {
    return add
}

let theNeedful = doTheNeedful()

theNeedful(4, 5)


