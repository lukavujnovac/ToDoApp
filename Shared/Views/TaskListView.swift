//
//  TaskListView.swift
//  Shared
//
//  Created by Luka Vujnovac on 29.07.2021..
//

import SwiftUI

struct TaskListView: View {
    let tasks = testData

    var body: some View {
        
        NavigationView {
            VStack(alignment: .leading) {
                List(tasks) { task in
                    TaskCell(task: task)
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
    let task: Task
    
    var body: some View {
        HStack {
            Image(systemName: task.completed ? "checkmark.circle.fill" : "circle")
                .resizable()
                .frame(width: 20, height: 20)
            Text(task.title)
                .padding()
        }
    }
}
