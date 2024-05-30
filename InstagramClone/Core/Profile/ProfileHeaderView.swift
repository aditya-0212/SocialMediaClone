//
//  ProfileHeaderView.swift
//  InstagramClone
//
//  Created by APPLE on 09/05/24.
//

import SwiftUI

struct ProfileHeaderView: View {
    let user: User
    var body: some View {
        VStack(spacing:10){
            //pic and state
            HStack{
                Image(user.profileImageUrl ?? "")
                    .resizable()
                    .scaledToFill()
                    .frame(width:80,height: 80)
                    .clipShape(Circle())
                
                Spacer()
                
                HStack(spacing:8){
                    UserStateView(value: 10, title: "Posts")
                    
                    UserStateView(value: 1000, title: "Follower")
                    
                    UserStateView(value: 55, title: "Following")
                }
            }
            .padding(.horizontal)
            //                .padding(.bottom,4)
            //name and bio
            VStack(alignment: .leading,spacing: 4){
                if let fullname = user.fullName{
                    Text(fullname)
                        .font(.footnote)
                        .fontWeight(.semibold)
                }
                
                if let bio = user.bio{
                    Text(bio)
                        .font(.footnote)
                        .fontWeight(.semibold)
                }
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal)
            //action Button
            Button{
                
            } label:{
                Text("Edit Profile")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .frame(width: 360,height: 32)
                    .foregroundColor(.black)
                    .overlay(RoundedRectangle(cornerRadius: 6).stroke(Color.gray,lineWidth: 1))
                
            }
        }
        Divider()
    }
}

#Preview {
    ProfileHeaderView(user: User.MOCK_USERS[0])
}
