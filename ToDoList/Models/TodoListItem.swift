//
//  TodoListItem.swift
//  ToDoList
//
//  Created by Ngoni Katsidzira  on 10/1/2025.
//

import Foundation

struct TodoListItem: Codable, Identifiable {
    let id: String
    let title: String
    let dueDate: TimeInterval
    let createdDate: TimeInterval
    var isDone: Bool
    
    mutating func setDone(_ state: Bool) {
        isDone = state
    }
}
