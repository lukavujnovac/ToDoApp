//
//  TaskListView.swift
//  Shared
//
//  Created by Luka Vujnovac on 29.07.2021..
//

import SwiftUI

struct TaskListView: View {
    let tasks = testData
    @ObservedObject var taskListViewModel = TaskListViewModel()

    var body: some View {
        
        NavigationView {
            VStack(alignment: .leading) {
                List(taskListViewModel.taskCellViewModels) { taskCellViewModel in
                    TaskCell(taskCellViewModel: taskCellViewModel)
                        .onTapGesture {
                            
                        }
                }
                Button(action: {
                    
                }) {
                    HStack {
                        Image(systemName: "plus.circle.fill")
                            .resizable()
                            .frame(width: 20, height: 20)
                        Text("add new task")
                    }
                }.padding()
            }.navigationTitle("Tasks")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TaskListView()
    }
}

struct TaskCell: View {    
    @ObservedObject var taskCellViewModel: TaskCellViewModel
    
    var body: some View {
        HStack {
            Image(systemName: taskCellViewModel.task.completed ? "checkmark.circle.fill" : "circle")
                .resizable()
                .frame(width: 20, height: 20)
            Text(taskCellViewModel.task.title)
                .padding()
        }
    }
}
