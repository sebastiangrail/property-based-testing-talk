//
//  Property_Based_Testing_ExampleTests.swift
//  Property Based Testing ExampleTests
//
//  Created by Sebastian Grail on 23/8/17.
//  Copyright © 2017 Sebastian Grail. All rights reserved.
//

import XCTest
import SwiftCheck
@testable import Property_Based_Testing_Example

extension User: Arbitrary {
    
    static var arbitrary: Gen<User> {
        
        let chars: Gen<Character> = Gen<Character>.fromElements(in: "a"..."z")
        
        let lowers = Gen<Int>.choose((3, 20))
            .flatMap { n -> Gen<[Character]> in
                let generators = Array(repeating: chars, count: n)
                return sequence(generators)
            }
            .map { String($0) }
        
        let nameGenerator = Gen<(String, String)>
            .zip(chars.map { String($0).uppercased() }, lowers)
            .map { $0.appending($1) }
        
        let validAges: Gen<Int> = Gen<Int>.fromElements(in: 0...200)
        
        
        return Gen<User>.compose { composer in
            return User(
                name: composer.generate(using: nameGenerator),
                verified: composer.generate(),
                age: composer.generate(using: validAges))
        }
    }
    
    private static func shrinkName(_ name: String) -> [String] {
        if name.characters.count <= 3 {
            return []
        } else {
            var smaller = name
            smaller.remove(at: name.index(before: name.endIndex))
            return shrinkName(smaller) + [smaller]
        }
    }
    
    public static func shrink(_ user: User) -> [User] {
        let names = shrinkName(user.name)
        let ages = Int.shrink(user.age)
        let result = zip(names, ages).map { (name, age) in
            return User(name: name, verified: false, age: age)
        }
        return Array(result)
    }
}


extension Vector: Arbitrary {
    public static var arbitrary: Gen<Vector> {
        return Gen<(Double, Double)>
            .zip(Double.arbitrary, Double.arbitrary)
            .map { Vector(dx: $0, dy: $1) }
    }
    
    public static func shrink(_ vector: Vector) -> [Vector] {
        let dxs = Double.shrink(vector.dx)
        let dys = Double.shrink(vector.dy)
        var result: [Vector] = []
        for dx in dxs {
            for dy in dys {
                result.append(Vector(dx: dx, dy: dy))
            }
        }
        return result
    }
}

func unfold <Value> (f: @escaping (Value) -> Gen<Value?>, initial: Value) -> Gen<[Value]> {
    return f(initial).flatMap { maybeValue -> Gen<[Value]> in
        guard let value = maybeValue else {
            return Gen<[Value]>.pure([])
        }
        return unfold(f: f, initial: value).map { [value] + $0 }
    }
}

func string(following s: String) -> Gen<String?> {
    guard let successorGen = letterFrequency[s] else {
        return Gen.pure(nil)
    }
    return Gen<String?>.weighted(
        successorGen.map { (Int($0*100), $1) }
    )
}

class Property_Based_Testing_ExampleTests: XCTestCase {
    
    func testShrinking() {
        // Even though the generator only generates negative values,
        // because of shrinking the test will be run with positive values
        property("") <- forAll(Int.arbitrary.map { -abs($0) - 1 }) { x in
            return false
        }
        
        // By using the implication operator ==> all tests with non-negative input will be discarded
        property("") <- forAll(Int.arbitrary.map { -abs($0) - 1 }) { x in
            return x < 0 ==> {
                return false
            }
        }
    }
    

    func testMax() {
        property("max returns one of the inputs") <- forAll { (x: Int, y: Int) in
            let result = max(x, y)
            return result == x || result == y
        }
        
        property("the output of max is greater or equal than both inputs") <- forAll { (x: Int, y: Int) in
            let result = max(x, y)
            return result >= x && result >= y
        }
        
        property("max is commutative") <- forAll { (x: Int, y: Int) in
            return max(x, y) == max(y, x)
        }
        
        property("max is associative") <- forAll { (x: Int, y: Int, z: Int) in
            return max(x, max(y, z)) == max(max(x, y), z)
        }
        
    }
    
    func testExamplesOfProperties() {
        property("Integer equality is reflexive")
            <- forAll { (x: Int) in
                x == x
            }

        property("Integer addition is commutative") <-
            forAll { (x: Int, y: Int) in
                x + y == y + x
            }

        property("appending strings is associative") <- forAll { (x: String, y: String, z: String) in
            (x + y) + z == x + (y + z)
        }

        property("reversing an array twice is identity") <- forAll { (xs: [Int]) in
            xs.reversed().reversed() == xs
        }
    }
    
    func testIsLeapYear() {
        let strictlyPositiveNumbers = Int.arbitrary.map { abs($0)+1 }
        let multiplesOfFour = strictlyPositiveNumbers.map { $0 * 4 }
        let multiplesOfOneHundred = strictlyPositiveNumbers.map { $0 * 100 }
        let multiplesOfFourHundred = strictlyPositiveNumbers.map { $0 * 400 }
        let gen = Gen<Int>.frequency([
            (1, strictlyPositiveNumbers),
            (1, multiplesOfFour),
            (1, multiplesOfOneHundred),
            (1, multiplesOfFourHundred)
            ])
        
        property("Years not divisible by 4 are not leap years") <- forAll(gen) { year in
            return year % 4 != 0 ==> {
                !isLeapYear(year)
            }
        }
        
        property("Years divisible by 4 and not divisble by 100 are leap years") <- forAll(gen) { year in
            return (year % 4 == 0 && year % 100 != 0) ==> {
                isLeapYear(year)
            }
        }
        
        property("Years divisible by 100, not by 400 are not leap years") <- forAll(gen) { year in
            return (year % 100 == 0 && year % 400 != 0) ==> {
                !isLeapYear(year)
            }
        }
        
        property("Years divisible by 400 are leap years") <- forAll(gen) { year in
            return (year % 400 == 0) ==> {
                isLeapYear(year)
            }
        }
        
    }
    
    
    
    func testUser() {
        property("") <- forAll { (x: User) in
            print(x)
            return true
        }
    }
    
    
    func testArray() {
//        let arguments = CheckerArguments(replay: (StdGen(1682871589, 8654), 3))
        let arguments = CheckerArguments()
        property("reversing twice is identity", arguments: arguments) <- forAll { (xs: [Int]) in
            return reverse(reverse(xs)) == xs
        }
    }
    
    func testWordGeneration() {
        let generator = unfold(f: string(following:), initial: "_")
                .map { $0.joined() }
                .suchThat { $0.characters.count >= 3 }
        property("?") <- forAll(generator) { string in
            print(string)
            return true
        }
    }
}
