//
//  TaskRepository.swift
//  to-do app (iOS)
//
//  Created by Luka Vujnovac on 06.08.2021..
//

import Foundation
import FirebaseFirestore
import FirebaseFirestoreSwift

class TaskRepository: ObservableObject {
    
    let db = Firestore.firestore()
    
    @Published var tasks = [Task]()
    
    init() {
        loadData()
    }
    
    func loadData() {
        db.collection("tasks").addSnapshotListener { (querySnapshot, error) in
            if let querySnapshot = querySnapshot {
                self.tasks = querySnapshot.documents.compactMap { document in
                    do {
                        let x = try? document.data(as: Task.self)
                        return x
                    }catch {
                        print("error kod dobivanja podatka iz baze \(error)")
                    }
                    return nil
                }
            }
        }
    }
}

