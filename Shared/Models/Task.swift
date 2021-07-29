//
//  Task.swift
//  to-do app
//
//  Created by Luka Vujnovac on 29.07.2021..
//

import Foundation

struct Task: Identifiable {
    var id: String = UUID().uuidString
    var title: String
    var completed: Bool
}

#if DEBUG
let testData = [
        Task(title: "napravi UI", completed: true),
        Task(title: "connect to firebase", completed: false),
        Task(title: "?????", completed: false),
        Task(title: "zavrsi projekt", completed: false)
]
#endif
