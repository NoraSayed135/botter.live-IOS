//
//  Charachter.swift
//  testSdK
//
//  Created by Amr Ahmed on 8/16/20.
//  Copyright © 2020 Amr Ahmed. All rights reserved.
//

import Foundation

extension Character {
    var asciiValue: Int {
        get {
            let s = String(self).unicodeScalars
            return Int(s[s.startIndex].value)
        }
    }
}
