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
        let argCount = CommandLine.argc
        let argument = CommandLine.arguments[1]
        let (option, value) = consoleIO.getOption(argument.substring(from: argument.characters.index(argument.startIndex, offsetBy: 1)))
        
        switch option {
        case .anagram:
            if argCount != 4 {
                if argCount > 4 {
                    consoleIO.writeMessage("Too many arguments for option \(option.rawValue)", to: .error)
                } else {
                    consoleIO.writeMessage("Too few arguments for option \(option.rawValue)", to: .error)
                }
                ConsoleIO.printUsage()
            } else {
                let first = CommandLine.arguments[2]
                let second = CommandLine.arguments[3]
                
                if first.isAnagramOfString(second) {
                    consoleIO.writeMessage("\(second) is an anagram of \(first)")
                } else {
                    consoleIO.writeMessage("\(second) is not an anagram of \(first)")
                }
            }
            
        case .palindrome:
            if argCount != 3 {
                if argCount > 3 {
                    consoleIO.writeMessage("Too many arguments for option \(option.rawValue)", to: .error)
                } else {
                    consoleIO.writeMessage("Too few arguments for option \(option.rawValue)", to: .error)
                }
                ConsoleIO.printUsage()
            } else {
                let s = CommandLine.arguments[2]
                let isPalindrome = s.isPalindrome()
                consoleIO.writeMessage("\(s) is \(isPalindrome ? "" : "not ")a palindrome")
            }
            
        case .help:
            ConsoleIO.printUsage()
            
        case .unknown:
            consoleIO.writeMessage("Unknown option \(value)", to: .error)
            ConsoleIO.printUsage()
        }
    }
}
