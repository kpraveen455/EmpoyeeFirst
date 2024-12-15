//
//  ContentView.swift
//  EmployeeFirst
//
//  Created by praveen on 16/12/24.
//

import SwiftUI

struct LoginView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var isLoggedIn: Bool = false
    @State private var loginError: String? = nil

    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Text("HR Management System")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()

                TextField("Username", text: $username)
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .textInputAutocapitalization(.none)

                SecureField("Password", text: $password)
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(10)

                if let loginError = loginError {
                    Text(loginError)
                        .foregroundColor(.red)
                        .font(.subheadline)
                }

                Button(action: handleLogin) {
                    Text("Login")
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(10)
                }

                NavigationLink("", destination: HomeView(), isActive: $isLoggedIn)
                    .hidden()
            }
            .padding()
            .navigationBarHidden(true)
        }
    }

    func handleLogin() {
        if username == "jim" && password == "1234" {
            isLoggedIn = true
        } else {
            loginError = "Invalid username or password"
        }
    }
}

#Preview {
    LoginView()
}
