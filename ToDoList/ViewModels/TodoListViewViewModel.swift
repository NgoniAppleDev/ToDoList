//
//  TodoListViewViewModel.swift
//  ToDoList
//
//  Created by Ngoni Katsidzira  on 10/1/2025.
//

import FirebaseFirestore
import Foundation

class TodoListViewViewModel: ObservableObject {
    @Published var showingNewItemView: Bool = false
    
    private let userId: String
    
    init(userId: String) {
        self.userId = userId
    }
    
    
    /// Delete todo list item.
    /// - Parameter id: item id to delete
    func delete(id: String) {
        let db = Firestore.firestore()
        db.collection("users")
            .document(userId)
            .collection("todos")
            .document(id)
            .delete()
    }
}
