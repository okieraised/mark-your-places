//
//  RegistrationView.swift
//  Mark Your Places
//
//  Created by Tri Pham on 1/7/23.
//

import SwiftUI

struct RegistrationView: View {
    @State private var fullname = ""
    @State private var email = ""
    @State private var password = ""
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            
            VStack(alignment: .leading, spacing: 20) {
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "arrow.left")
                        .font(.title)
                        .imageScale(.medium)
                        .padding()
                }
                
                Text("Create new account")
                    .font(.system(size: 40))
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.leading)
                    .frame(width: 250)
                
                Spacer()
                
                VStack {
                    VStack(spacing: 56) {
                        CustomInputField(text: $fullname, title: "Full Name", placeholder: "Enter your name")
                        
                        CustomInputField(text: $fullname, title: "Full Name", placeholder: "Enter your name")
                        
                        CustomInputField(text: $fullname, title: "Full Name", placeholder: "Enter your name")
                    }
                    .padding(.leading)
                    
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        HStack {
                            Text("SIGN UP")
                                .foregroundColor(.black)
                            
                            Image(systemName: "arrow.right")
                                .foregroundColor(.black)
                        }
                        .frame(width: UIScreen.main.bounds.width - 32, height: 50)
                    }
                    .background(Color.white)
                    .cornerRadius(10)
                    
                    Spacer()
                }
            }
            .foregroundColor(.white)
        }
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
