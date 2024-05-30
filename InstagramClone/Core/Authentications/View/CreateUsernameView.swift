//
//  CreateUsernameView.swift
//  InstagramClone
//
//  Created by APPLE on 06/05/24.
//

import SwiftUI

struct CreateUsernameView: View {
//    @State private var username = ""
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var viewModel: RegistrationViewModel
    var body: some View {
        VStack(spacing:10){
                 Text("Create Username")
                     .font(.title2)
                     .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                     .padding(.top)
                 
                 Text("Pick a username for your new account.You can always change it later")
                     .font(.footnote)
                     .foregroundColor(.gray)
                     .multilineTextAlignment(.center)
                     .padding(.horizontal,24)
                 
            TextField("Username",text: $viewModel.username)
                     .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                     .modifier(IGTextFieldModifier())
                 
                NavigationLink{
                    CreatePasswordView()
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
    CreateUsernameView()
}
