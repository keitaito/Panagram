//
//  Panagram.swift
//  Panagram
//
//  Created by Keita Ito on 12/27/16.
//  Copyright © 2016 Keita Ito. All rights reserved.
//

import Foundation

class Panagram {
    let consoleIO = ConsoleIO()
    
    func staticMode() {
//        ConsoleIO.printUsage()
        let argCount = CommandLine.argc
        let argument = CommandLine.arguments[1]
        let (option, value) = consoleIO.getOption(argument.substring(from: argument.characters.index(argument.startIndex, offsetBy: 1)))
//        print("Argument count: \(argCount) Option: \(option) value: \(value)")
        
        switch option {
        case .anagram:
            if argCount != 4 {
                if argCount > 4 {
                    print("Too many arguments for option \(option.rawValue)")
                } else {
                    print("Too few arguments for option \(option.rawValue)")
                }
                
                ConsoleIO.printUsage()
            } else {
                let first = CommandLine.arguments[2]
                let second = CommandLine.arguments[3]
                
                if first.isAnagramOfString(second) {
                    print("\(second) is an anagram of \(first)")
                } else {
                    print("\(second) is not an anagram of \(first)")
                }
            }
            
        case .palindrome:
            if argCount != 3 {
                if argCount > 3 {
                    print("Too many arguments for option \(option.rawValue)")
                } else {
                    print("Too few arguments for option \(option.rawValue)")
                }
                
                ConsoleIO.printUsage()
            } else {
                let s = CommandLine.arguments[2]
                let isPalindrome = s.isPalindrome()
                print("\(s) is \(isPalindrome ? "" : "not ")a palindrome")
            }
            
        case .help:
            ConsoleIO.printUsage()
            
        case .unknown:
            print("Unknown option \(value)")
            ConsoleIO.printUsage()
        }
    }
}
