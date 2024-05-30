//
//  FeedView.swift
//  InstagramClone
//
//  Created by APPLE on 03/05/24.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        NavigationStack{
            ScrollView{
                LazyVStack(spacing:32){
//                    ForEach(0...10, id: \.self){post in
                    ForEach(Post.MOCK_POSTS){ post in
                        
                        FeedCell(post: post)
                    }
                }
            }
            .navigationTitle("Feed")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading){
                    Image("InstagramLogo")
                        .resizable()
                        .frame(width:100,height:32)
                }
                
                ToolbarItem(placement: .navigationBarTrailing){
                    Image(systemName: "paperplane")
                        .imageScale(.large)
                }
            }
        }
    }
}

#Preview {
    FeedView()
}
