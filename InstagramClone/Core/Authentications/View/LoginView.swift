//
//  LoginView.swift
//  InstagramClone
//
//  Created by APPLE on 05/05/24.
//

import SwiftUI

struct LoginView: View {
    
//    @State private var email = ""
//    @State private var password = ""
    @StateObject var viewModel = LoginViewModel()
  
    var body: some View {
        NavigationStack{
            Spacer()
            VStack{
   
                //logo Image
                Image("InstagramLogo")
                    .resizable()
                    .scaledToFill()
                    .frame(width:200,height: 100)
                
                //text fields
                VStack{
                    TextField("Enter your email",text: $viewModel.email)
                        .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                        .modifier(IGTextFieldModifier())
                }
                
                SecureField("Enter your password",text: $viewModel.password)
                    .modifier(IGTextFieldModifier())
            
            }
            
            Button{
                print("Show forgot password")
            } label: {
                Text("Forgot Password ?")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .padding(.top)
                    .padding(.trailing, 28)
            }
            .frame(maxWidth: .infinity, alignment: .trailing)
            
            Button{
                Task{try await viewModel.signIn()}
            } label: {
                Text("Login")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .frame(width:360,height: 44)
                    .background(Color(.systemBlue))
                    .cornerRadius(8)
                   }
            .padding(.vertical)
            
            
//            HStack {
//                Rectangle()
//                    .frame(width: (UIScreen.main.bounds.width / 2) - 40, height: 0.5)
//                Text("OR")
//                    .font(.footnote)
//                    .fontWeight(.semibold)
//                Rectangle()
//                    .frame(width: (UIScreen.main.bounds.width / 2) - 40, height: 0.5)
//                Rectangle()
//            }
//            .foregroundColor(.gray)
            
            HStack{
                Image("FacebookLogo")
                    .resizable()
                    .frame(width: 20,height: 20)
                
                Text("Continue with facebook")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(Color(.systemBlue))
            }
            .padding(.top,8)
            
            Spacer()
            
            Divider()
            
            NavigationLink{
               AddEmailView()
                    
                    .navigationBarBackButtonHidden(true)
            } label:{
                HStack(spacing:3){
                    Text("Don't have an account?")
                    
                     Text("Sign Up")
                        .fontWeight(.semibold)
                }
                .font(.footnote)
            }
            .padding(.vertical,16)
        }
        
    }
}

#Preview {
    LoginView()
}
