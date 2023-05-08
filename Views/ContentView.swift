//
//  ContentView.swift
//  LoginApp
//
//  Created by Naveen Ramachandrappa on 5/8/23.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var loginViewModel = LoginViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("Enter your username", text: $loginViewModel.userName)
                    .padding()
                    .overlay {
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(.blue, lineWidth: 2)
                    }
                    .foregroundColor(.black)
                
                TextField("Enter your password", text: $loginViewModel.password)
                    .padding()
                    .overlay {
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(.blue, lineWidth: 2)
                    }
                    .foregroundColor(.black)
               
                LoginErrorView(isPresented: $loginViewModel.isInvalidLogin)

                Button(action: handleLogin) {
                    Text("Login")
                        .frame(maxWidth: .infinity)
                }
                .fontWeight(.semibold)
                .padding()
                .background(.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
                .frame(height: 80)

            }.padding(15)
            .navigationTitle("Login")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
    
    func handleLogin() {
        loginViewModel.login()
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
