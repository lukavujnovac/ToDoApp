//
//  TaskCellViewModel.swift
//  to-do app (iOS)
//
//  Created by Luka Vujnovac on 29.07.2021..
//

import Foundation
import Combine

class TaskCellViewModel: ObservableObject, Identifiable {
    @Published var task: Task
    
    var id = ""
    @Published var completionStateIconName: String = ""
    
    private var cancelabels = Set<AnyCancellable>()
    
    init(task: Task) {
        self.task = task
        
        $task.map { (task) in
            task.completed ? "checkmark.circle.fill" : "circle"
        }
        .assign(to: \.completionStateIconName, on: self)
        .store(in: &cancelabels)
        
        $task
            .map { task in 
                task.id
            }
            .assign(to: \.id, on: self)
            .store(in: &cancelabels)
    }
}
