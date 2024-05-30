//
//  CurrentUserProfileView.swift
//  InstagramClone
//
//  Created by APPLE on 07/05/24.
//

import SwiftUI

struct CurrentUserProfileView: View {
    let user: User
    var posts:[Post]{
        return Post.MOCK_POSTS.filter({$0.user?.username == user.username})
    }
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack{
                    //header
                    ProfileHeaderView(user:user)
                }
                //post and grid view
                PostGridView(posts: posts)
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing){
                    Button{
                        AuthService.shared.signOut()
                    } label :{
                        Image(systemName: "line.3.horizontal")
                            .foregroundColor(.black)
                    }
                }
            }
        }
    }
}

#Preview {
    CurrentUserProfileView(user: User.MOCK_USERS[0])
}
