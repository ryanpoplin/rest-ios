//
//  TextValidation.swift
//  Rest
//
//  Created by Ryan Poplin on 12/12/15.
//  Copyright © 2015 Ryan Poplin. All rights reserved.
//

import Foundation

struct TextValidation {
    // always comment above regex's to define what it is they are good for...
    let regExMatchingString = "^[\\s?[a-zA-Z0-9\\-]]{0,5}$"
    func validateString(str: String) -> Bool {
        if let _ = str.rangeOfString(regExMatchingString, options: .RegularExpressionSearch) {
            return true
        } else {
            return false
        }
    }
}