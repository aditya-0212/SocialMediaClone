//
//  AddEmailView.swift
//  InstagramClone
//
//  Created by APPLE on 06/05/24.
//

import SwiftUI

struct AddEmailView: View {
//    @State private var email = ""
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var viewModel: RegistrationViewModel
    var body: some View {
       VStack(spacing:10){
                Text("Add Your Email")
                    .font(.title2)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .padding(.top)
                
                Text("You'll use this email to sign into your account ")
                    .font(.footnote)
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal,24)
                
           TextField("Enter your email",text: $viewModel.email)
                    .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                    .modifier(IGTextFieldModifier())
                
               NavigationLink{
                    CreateUsernameView()
                       .navigationBarBackButtonHidden(true)
                } label:{
                    Text("Next")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width:360, height:44)
                        .background(Color(.systemBlue))
                        .cornerRadius(8)
                        
                    }
                .padding(.vertical)
                Spacer()
                
            }
        .toolbar{
            ToolbarItem(placement: .navigationBarLeading){
                Image(systemName: "chevron.left")
                    .imageScale(.large)
                    .onTapGesture {
                        dismiss()
                    }
            }
        }
         }
    
}

#Preview {
    AddEmailView()
}
