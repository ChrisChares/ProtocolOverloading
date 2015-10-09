//: Playground - noun: a place where people can play

import UIKit

protocol SomeProtocol {
    func doSomething<T>(obj: T)
}

class Dispatcher {
    func dispatch<T>(someProtocol: SomeProtocol, obj: T) {
        someProtocol.doSomething(obj)
    }
}

class SomeLocalClass : SomeProtocol {
    func doSomething<T>(obj: T) {
        print("Generic Method")
    }
    func doSomething(obj: String) {
        print(obj)
    }
}

let testClass = SomeLocalClass()
let dispatcher = Dispatcher()

dispatcher.dispatch(testClass, obj: "I will use the generic method")
testClass.doSomething("But I will use the string method")