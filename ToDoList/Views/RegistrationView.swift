//
//  RegistrationView.swift
//  ToDoList
//
//  Created by Ngoni Katsidzira  on 10/1/2025.
//

import SwiftUI

struct RegistrationView: View {
    @StateObject var viewModel = RegistrationViewViewModel()
    
    var body: some View {
        VStack {
            /// Header
            HeaderView(title: "Register", subtitle: "Start organizing todos", angle: -15, backgroundColor: .orange)
            
            Form {
                if !viewModel.errorMessage.isEmpty {
                    Text(viewModel.errorMessage)
                        .foregroundStyle(.red)
                }
                
                TextField("Full Name", text:$viewModel.name)
                    .autocorrectionDisabled(true)
                TextField("Email", text:$viewModel.email)
                    .autocapitalization(.none)
                    .autocorrectionDisabled(true)
                SecureField("Password", text:$viewModel.password)
                
                TLButton(title: "Create Account", backgroundColor: .green) {
                    viewModel.register()
                }
            }
            .offset(y: -50)
            
            Spacer()
        }
    }
}

#Preview {
    RegistrationView()
}
