//
//  CreatePasswordView.swift
//  InstagramClone
//
//  Created by APPLE on 06/05/24.
//

import SwiftUI

struct CreatePasswordView: View {

//        @State private var password = ""
        @Environment(\.dismiss) var dismiss
    @EnvironmentObject var viewModel: RegistrationViewModel
        var body: some View {
            VStack(spacing:10){
                     Text("Create Password")
                         .font(.title2)
                         .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                         .padding(.top)
                     
                     Text("Your password must be in 6 character in length")
                         .font(.footnote)
                         .foregroundColor(.gray)
                         .multilineTextAlignment(.center)
                         .padding(.horizontal,24)
                     
                SecureField("Enter your password",text: $viewModel.password)
                     .modifier(IGTextFieldModifier())
                     .padding(.top)
             
                     
                   NavigationLink{
                         CompleteSignupView()
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
    CreatePasswordView()
}
