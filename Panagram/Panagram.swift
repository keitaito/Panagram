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
        print("Argument count: \(argCount) Option: \(option) value: \(value)")
    }
}
