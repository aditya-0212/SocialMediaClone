//
//  PostGridView.swift
//  InstagramClone
//
//  Created by APPLE on 09/05/24.
//

import SwiftUI

struct PostGridView: View {
    
    var posts:[Post]
    
    private let gridItems: [GridItem] = [
        .init(.flexible(),spacing:3),
        .init(.flexible(),spacing:3),
        .init(.flexible(),spacing:3),
        
    ]
    private let imageDimensions:CGFloat = (UIScreen.main.bounds.width / 3) - 1
    var body: some View {
        LazyVGrid(columns: gridItems){
            ForEach(posts){ post in
                Image(post.imageUrl)
                    .resizable()
                    .scaledToFill()
                    .frame(width: imageDimensions,height: imageDimensions)
                    .clipped()
            }
        }
    }
}

#Preview {
    PostGridView(posts: Post.MOCK_POSTS)
}
