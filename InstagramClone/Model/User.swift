//
//  User.swift
//  InstagramClone
//
//  Created by APPLE on 07/05/24.
//

import Foundation

struct User: Identifiable,Hashable, Codable {
    
    let id: String
    var username: String
    var profileImageUrl: String?
    var fullName: String?
    var bio: String?
    let email: String
}

extension User{
    static var MOCK_USERS: [User] = [
        .init(id: NSUUID().uuidString, username: "aditya",profileImageUrl: "Image2"  ,fullName: "Aditya Choubisa", bio: "IOS developer",email: "adityachoubisa02@gmail.com"),
        .init(id: NSUUID().uuidString, username: "gourav",profileImageUrl: "Image3"  ,fullName: "Gourav Choubisa", bio: "Physiotherapist",email: "gaouravchoubisa02@gmail.com"),
        .init(id: NSUUID().uuidString, username: "pratiksha",profileImageUrl: "Image4"  ,fullName: "Pratiksha Jain", bio: "Maths Teacher",email: "pratikshachoubisa02@gmail.com"),
        .init(id: NSUUID().uuidString, username: "prawar",profileImageUrl: "Image5"  ,fullName: "Prawar Mundra", bio: "WebApp developer",email: "prawarachoubisa02@gmail.com"),
        .init(id: NSUUID().uuidString, username: "tanishka",profileImageUrl: "Image6"  ,fullName: "Tanishka Sharma", bio: "Village Developer Officer",email: "tanishkachoubisa02@gmail.com")
    ]
}
