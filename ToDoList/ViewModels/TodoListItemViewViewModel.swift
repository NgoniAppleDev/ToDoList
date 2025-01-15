//
//  TodoListItemViewViewModel.swift
//  ToDoList
//
//  Created by Ngoni Katsidzira  on 10/1/2025.
//

import FirebaseFirestore
import FirebaseAuth
import Foundation

class TodoListItemViewViewModel: ObservableObject {
    init() {}
    
    func toggleIsDone(item: TodoListItem) {
        var newItem = item
        newItem.setDone(!item.isDone)
        
        guard let uid = Auth.auth().currentUser?.uid else { return }
        
        let db = Firestore.firestore()
        db.collection("users")
            .document(uid)
            .collection("todos")
            .document(newItem.id)
            .setData(newItem.asDictionary())
    }
}
