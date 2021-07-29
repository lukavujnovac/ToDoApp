//
//  TaskListViewModel.swift
//  to-do app (iOS)
//
//  Created by Luka Vujnovac on 29.07.2021..
//

import Foundation
import Combine

class TaskListViewModel: ObservableObject {
    @Published var taskCellViewModels = [TaskCellViewModel]()
    
    private var cancelables = Set<AnyCancellable>()
    
    init() {
        self.taskCellViewModels = testData.map { task in
            TaskCellViewModel(task: task)
        }
    }
}
