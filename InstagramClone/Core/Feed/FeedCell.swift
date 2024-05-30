//
//  FeedCall.swift
//  InstagramClone
//
//  Created by APPLE on 03/05/24.
//

import SwiftUI

struct FeedCell: View {
    
    let post: Post
    
    var body: some View {
        VStack{
            //Image + UserName
            HStack{
                if let user = post.user{
                    Image(user.profileImageUrl ?? "")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 40, height: 40)
                        .clipShape(Circle())
                    
                    Text(user.username)
                        .font(.footnote)
                        .fontWeight(.semibold)
                }
                
                Spacer()
            }
            .padding(.leading,8)
            
            
            //Post Image
            Image(post.imageUrl)
                .resizable()
//                .scaledToFill()
                .frame(height: 400)
                .clipShape(Rectangle())
                
            
            //actionButton
            HStack(spacing:16){
                Button {
                    print("Like button")
                }
                label: {
                   Image(systemName: "heart")
                        .imageScale(.large)
                }
                
                Button {
                    print("Comment Button")
                }
                label: {
                   Image(systemName: "bubble.right")
                        .imageScale(.large)
                }
                
                Button {
                    print("Share Post")
                }
                label: {
                    Image(systemName: "paperplane")
                        .imageScale(.large)
                }
                Spacer()
            }
            .padding(.leading,8)
            .padding(.top, 4)
            .foregroundColor(.black)
            
            
            //Likes Label
            Text("\(post.likes) likes")
                .font(.footnote)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading,10)
                .padding(.top,1)
            
            //Caption label
            
            HStack{
                Text("\(post.user?.username ?? "") ").fontWeight(.semibold) +
                Text(post.caption)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .font(.footnote)
            .padding(.leading, 10)
            .padding(.top, 1)
            
            Text("6h ago")
                .font(.footnote)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading,10)
                .padding(.top,1)
                .foregroundColor(.gray)
        }
    }
}

#Preview {
    FeedCell(post: Post.MOCK_POSTS[1])
}
