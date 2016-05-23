//: Playground - noun: a place where people can play

import UIKit

var currentYear: Int = 2016

struct Person {
    var firstName: String
    var lastName: String
    var yearOfBirth: Int
    
    var age: Int {
        get {
            let age = currentYear - yearOfBirth
            return age
        }
        set(age) {
            yearOfBirth = currentYear - age
        }
    }
}

var person = Person(firstName: "Emily", lastName: "Mearns", yearOfBirth: 1988)

print(person.yearOfBirth)
print("\(person.firstName) \(person.lastName)")

print(person.age)

person.age = 58
print(person.yearOfBirth)