//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Ngoni Katsidzira  on 9/1/2025.
//

import FirebaseCore
import SwiftUI

@main
struct ToDoListApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
