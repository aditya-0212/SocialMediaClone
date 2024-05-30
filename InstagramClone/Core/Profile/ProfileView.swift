//
//  ProfileView.swift
//  InstagramClone
//
//  Created by APPLE on 01/05/24.
//

import SwiftUI

struct ProfileView: View {
    let user: User
    
    var posts:[Post]{
        return Post.MOCK_POSTS.filter({$0.user?.username == user.username})
    }
    var body: some View {
            ScrollView{
                VStack{
                    //header
                   ProfileHeaderView(user: user)
                }
                
                //post and grid view
                PostGridView(posts: posts)
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            
        
    }
}

#Preview {
    ProfileView(user: User.MOCK_USERS[1])
}
