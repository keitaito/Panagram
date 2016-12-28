//
//  ConsoleIO.swift
//  Panagram
//
//  Created by Keita Ito on 12/27/16.
//  Copyright © 2016 Keita Ito. All rights reserved.
//

import Foundation

enum OptionType: String {
    case palindrome = "p"
    case anagram = "a"
    case help = "h"
    case unknown
    
    init(value: String) {
        switch value {
        case "a":
            self = .anagram
        case "p":
            self = .palindrome
        case "h":
            self = .help
        default:
            self = .unknown
        }
    }
}

class ConsoleIO {
    class func printUsage() {
        let executableName = (CommandLine.arguments[0] as NSString).lastPathComponent
        
        print("usage:")
        print("\(executableName) -a string1 string2")
        print("or")
        print("\(executableName) -p string")
        print("or")
        print("\(executableName) -h to show usage information")
        print("Type \(executableName) without an option to enter interactive mode.")
    }
    
    func getOption(_ option: String) -> (option: OptionType, value: String) {
        return (OptionType(value: option), option)
    }
}
