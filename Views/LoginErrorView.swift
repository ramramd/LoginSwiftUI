//
//  LoginErrorView.swift
//  LoginApp
//
//  Created by Naveen Ramachandrappa on 5/8/23.
//

import SwiftUI

struct LoginErrorView: View {
    
    @Binding var isPresented: Bool
    var body: some View {
        if isPresented {
            Text("Your username or password is empty!!!")
                .foregroundColor(.red)
        }
    }
}

struct LoginErrorView_Previews: PreviewProvider {
    static var previews: some View {
        LoginErrorView(isPresented: .constant(false))
    }
}
