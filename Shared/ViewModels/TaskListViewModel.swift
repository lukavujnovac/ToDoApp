//
//  TaskListViewModel.swift
//  to-do app (iOS)
//
//  Created by Luka Vujnovac on 29.07.2021..
//

import Foundation
import Combine

class TaskListViewModel: ObservableObject {
    @Published var taskRepository = TaskRepository()
    @Published var taskCellViewModels = [TaskCellViewModel]()
    
    private var cancelables = Set<AnyCancellable>()
    
    init() {
        taskRepository.$tasks.map { tasks in 
            tasks.map { task in
                TaskCellViewModel(task: task)
            }
        }
        .assign(to: \.taskCellViewModels, on: self)
        .store(in: &cancelables)
    }
    
    func addTask(task: Task) {
        let taskViewModel = TaskCellViewModel(task: task)
        self.taskCellViewModels.append(taskViewModel)
    }
}
