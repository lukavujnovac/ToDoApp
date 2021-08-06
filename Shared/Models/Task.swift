//
//  Task.swift
//  to-do app
//
//  Created by Luka Vujnovac on 29.07.2021..
//

import Foundation
import FirebaseFirestore
import FirebaseFirestoreSwift

struct Task: Identifiable, Codable {
    @DocumentID var id: String?
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
