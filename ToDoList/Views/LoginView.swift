//
//  LoginView.swift
//  ToDoList
//
//  Created by Ngoni Katsidzira  on 10/1/2025.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        VStack {
            /// Header
            HeaderView(title: "To Do List", subtitle: "Get Things Done", angle: 15, backgroundColor: .pink)
            
            /// Login Form
            Form {
                if !viewModel.errorMessage.isEmpty {
                    Text(viewModel.errorMessage)
                        .foregroundStyle(.red)
                }
                
                TextField("Email Address", text: $viewModel.email)
                    .autocorrectionDisabled(true)
                    .autocapitalization(.none)
                SecureField("Password", text: $viewModel.password)
                    .autocapitalization(.none)
                    .autocorrectionDisabled(true)
                
                TLButton(title: "Log In", backgroundColor: .blue, action: {
                    viewModel.login()
                })
            }
            .offset(y: -50)
            
            /// Create Account
            VStack {
                Text("New around here?")
                
                NavigationLink("Create An Account") {
                    RegistrationView()
                }
            }
            .padding(.bottom, 50)
            
            Spacer()
        }
    }
}

#Preview {
    NavigationStack {
        LoginView()
    }
}
