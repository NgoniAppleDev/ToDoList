//
//  NewItemView.swift
//  ToDoList
//
//  Created by Ngoni Katsidzira  on 10/1/2025.
//

import SwiftUI

struct NewItemView: View {
    @StateObject var viewModel = NewItemViewViewModel()
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            Text("New Item")
                .font(.system(size: 32))
                .bold()
                .padding(.top, 30)
            
            Form {
                TextField("Title", text: $viewModel.title)
                
                DatePicker("Due Date", selection: $viewModel.dueDate, in: Date()...)
                    .datePickerStyle(.graphical)
                
                TLButton(title: "Save", backgroundColor: .pink) {
                    if viewModel.canSave {
                        viewModel.save()
                        dismiss()
                    } else {
                        viewModel.showAlert = true
                    }
                }
                .padding()
            }
            .alert(isPresented: $viewModel.showAlert) {
                Alert(
                    title: Text("Error").foregroundColor(.red),
                    message: Text("Please fill in all fields and select due date newer than today.")
                )
            }
        }
    }
}

#Preview {
    NewItemView()
}
