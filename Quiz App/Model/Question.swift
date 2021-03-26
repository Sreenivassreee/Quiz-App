//
//  Question.swift
//  Quiz App
//
//  Created by Sreenivas k on 23/03/21.
//

import Foundation

struct Question {
    var text:String
    var answer:String

    init(q:String,a:String) {
        text = q
        answer = a
    }
}
