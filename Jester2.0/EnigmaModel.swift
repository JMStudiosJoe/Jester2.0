//
//  EnigmaModel.swift
//  Jester2.0
//
//  Created by Joseph Richardson on 8/30/17.
//  Copyright © 2017 Joseph Richardson. All rights reserved.
//

import Foundation

class Enigma {
    var type: String = ""
    var intro: String = ""
    var answer: String? = ""
    var explicit: Bool = false
    
    init(intro: String, explicit: Bool = false, answer: String, type: String) {
        self.intro = intro
        self.explicit = explicit
        self.answer = answer
        self.type = type
    }
}
