//: Playground - noun: a place where people can play

import UIKit

var currentYear = 2016

struct Person {
    var firstName: String
    var lastName: String
    var yearOfBirth: Int
    
    var age: Int {
        get {
            return currentYear - yearOfBirth
        }
        set(newAge) {
            yearOfBirth = currentYear - newAge
        }
    }
}

var person = Person(firstName: "Emily", lastName: "Mearns", yearOfBirth: 1988)

print(person.yearOfBirth)
print("\(person.firstName) \(person.lastName)")
print(person.age)


person.age = 35

print(person.age)
print(person.yearOfBirth)