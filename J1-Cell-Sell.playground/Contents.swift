// Russell Gordon
// J1 - Cell Sell

// Notes
//
// Three inputs
//
// daytime – number of daytime minutes
// evening - number of evening minutes
// weekend - number of weekend minutes
//
// I observe that everything related to the costs is tied to minutes, and expressed in cents.
//
// I will do all my calculations in cents, and then provide decimal approximations only at the very end.
//
// I cannot assume that input will be valid (should be greater than or equal to 0)

// Test cases

//// 1: B is cheaper
//let d : Int = 251
//let e : Int = 10
//let w : Int = 60

//// 2: Same price
//let d : Int = 162
//let e : Int = 61
//let w : Int = 66

//// 3: A is cheaper
//let d : Int = 122
//let e : Int = 61
//let w : Int = 66

//// 4: Less than free minutes threshold for plan A
//let d : Int = 99
//let e : Int = 201
//let w : Int = 66

// 5: Cost divisible by 10 (formatting) and negative value for minutes
let d : Int = 114
let e : Int = -30
let w : Int = 66

// Input variables
let daytime : Int = d
let evening : Int = e
let weekend : Int = w

// Print values
print("daytime = \(d)")
print("evening = \(e)")
print("weekend = \(w)")

/*
 * Calculate plan A cost in cents
 */
var a : Int = 0

// Daytime (only if valid input)
if (daytime > 0) {
    let actualDaytime = daytime - 100   // 100 free minutes
    if (actualDaytime > 0) {
        a += actualDaytime * 25
    }
}

// Evening (only if valid input)
if (evening > 0) {
    a += evening * 15
}

// Weekend (only if valid input
if (weekend > 0) {
    a += weekend * 20
}

// Show output
let aAsDouble : Double = Double(a)/100
print("Plan A costs \(aAsDouble)", terminator: "")
if (a % 10 == 0) {
    // When the dollar value is divisible by 10, add a zero at end
    // for proper formatting with dollar amounts
    print("0", terminator: "")
}
print("")


/*
 * Calculate plan B cost in cents
 */
var b : Int = 0

// Daytime (only if valid input)
if (daytime > 0) {
    let actualDaytime = daytime - 250   // 250 free minutes
    if (actualDaytime > 0) {
        b += actualDaytime * 45
    }
}

// Evening (only if valid input)
if (evening > 0) {
    b += evening * 35
}

// Weekend (only if valid input
if (weekend > 0) {
    b += weekend * 25
}

// Show output
let bAsDouble : Double = Double(b)/100
print("Plan B costs \(bAsDouble)", terminator: "")
if (b % 10 == 0) {
    // When the dollar value is divisible by 10, add a zero at end
    // for proper formatting with dollar amounts
    print("0", terminator: "")
}
print("")

/*
 * Compare costs
 */
if (a < b) {
    print("Plan A is cheapest.")
} else if (a == b) {
    print("Plan A and B are the same price.")
} else {
    print("Plan B is cheapest.")
}


