//
//  main.swift
//  Panagram
//
//  Created by Keita Ito on 12/27/16.
//  Copyright © 2016 Keita Ito. All rights reserved.
//

import Foundation

let panagram = Panagram()
//panagram.staticMode()
if CommandLine.argc < 2 {
    // Handle interactive mode
} else {
    panagram.staticMode()
}
