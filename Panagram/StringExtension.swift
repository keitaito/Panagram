//
//  StringExtension.swift
//  Panagram
//
//  Created by Keita Ito on 12/27/16.
//  Copyright © 2016 Keita Ito. All rights reserved.
//

import Foundation

extension String {
    
    func isAnagramOfString(_ s: String) -> Bool {
        let lowerSelf = self.lowercased().replacingOccurrences(of: " ", with: "")
        let lowerOther = s.lowercased().replacingOccurrences(of: " ", with: "")
        
        return lowerSelf.characters.sorted() == lowerOther.characters.sorted()
    }
    
    func isPalindrome() -> Bool {
        let f = self.lowercased().replacingOccurrences(of: " ", with: "")
        let s = String(f.characters.reversed())
        
        return f == s
    }
}
