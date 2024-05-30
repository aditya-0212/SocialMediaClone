//
//  Post.swift
//  InstagramClone
//
//  Created by APPLE on 09/05/24.
//

import Foundation

struct Post: Identifiable, Hashable, Codable{
    let id: String
    let ownerUid: String
    let caption: String
    let likes: Int
    let imageUrl: String
    let timestamp: Date
    var user: User?
}

extension Post{
    static var MOCK_POSTS:[Post]=[
        .init(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: "He is the best Footballer in the world", likes: 345, imageUrl: "Image3", timestamp: Date(),user: User.MOCK_USERS[1]),
        .init(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: "He is the best cricketer in the world", likes: 123, imageUrl: "Image2", timestamp: Date(),user: User.MOCK_USERS[0]),
        .init(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: "He is the best batsman in the world", likes: 111, imageUrl: "Image4", timestamp: Date(),user: User.MOCK_USERS[2]),
        .init(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: "He is the best bowler in the world", likes: 89, imageUrl: "Image5", timestamp: Date(),user: User.MOCK_USERS[4]),
        .init(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: "He is the best allrounder in the world", likes: 44, imageUrl: "Image2", timestamp: Date(),user: User.MOCK_USERS[1])
    ]
        
    
}
