//
//  SearchView.swift
//  InstagramClone
//
//  Created by APPLE on 03/05/24.
//

import SwiftUI

struct SearchView: View {
    
    @State private var searchText = ""
    var body: some View {
        NavigationStack{
            ScrollView{
                LazyVStack(spacing:12){
//                    ForEach(0...15, id: \.self){user in
                    ForEach(User.MOCK_USERS){user in
                        NavigationLink(value: user){
                            HStack{
                                Image(user.profileImageUrl ?? "")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width:40,height:40)
                                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                
                                VStack(alignment:.leading){
                                    Text(user.username)
                                        .fontWeight(.semibold)
                                    if let fullname = user.fullName{
                                        Text(fullname)
                                    }
                                    
                                }
                                .font(.footnote)
                                
                                Spacer()
                            }
                            .foregroundColor(.black)
                        }
                        .padding(.horizontal)
                        
                    }
                }
                .padding(.top,8)
                .searchable(text: $searchText)
            }
            .navigationDestination(for: User.self, destination: { user in
               ProfileView(user:user)
                
            })
            .navigationTitle("Explore")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    SearchView()
}
