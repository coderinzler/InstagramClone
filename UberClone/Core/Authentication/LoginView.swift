//
//  LoginView.swift
//  UberClone
//
//  Created by user239884 on 5/27/23.
//

import SwiftUI

struct LoginView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        NavigationStack{
            VStack{
                
                // Logo Image
                Image("Instagram-1")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 220, height: 100)
                
                
                VStack{
                    TextField("Enter your email", text:$email)
                        .autocapitalization(.none)
                        .font(.subheadline)
                        .padding(12)
                        .background(Color(.systemGray5))
                        .cornerRadius(10)
                        .padding(.horizontal, 24)
                    SecureField("Password", text: $password)
                        .autocapitalization(.none)
                        .font(.subheadline)
                        .padding(12)
                        .background(Color(.systemGray5))
                        .cornerRadius(10)
                        .padding(.horizontal, 24)
                }
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
