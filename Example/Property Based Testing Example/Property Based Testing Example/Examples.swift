//
//  Examples.swift
//  Property Based Testing Example
//
//  Created by Sebastian Grail on 23/8/17.
//  Copyright © 2017 Sebastian Grail. All rights reserved.
//

import Foundation

public func max(_ x: Int, _ y: Int) -> Int {
    return x > y ? x : y
}

public func isLeapYear(_ year: Int) -> Bool {
    if year % 4 == 0 {
        if year % 100 != 0 {
            return true
        } else {
            return year % 400 == 0
        }
    } else {
        return false
    }
}

struct User {
    let name: String
    let verified: Bool
    let age: Int
}

struct Vector {
    let dx: Double
    let dy: Double
}

func reverse <T> (_ xs: [T]) -> [T] {
    guard let first = xs.first else { return [] }
    return reverse(Array(xs.dropLast())) + [first]
}
