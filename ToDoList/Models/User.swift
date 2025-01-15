//
//  User.swift
//  ToDoList
//
//  Created by Ngoni Katsidzira  on 10/1/2025.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
