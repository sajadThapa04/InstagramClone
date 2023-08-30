//
//  Users.swift
//  BlockS
//
//  Created by Sajad Thapa on 29/8/2023.
//

import Foundation
import Firebase

struct User: Identifiable,Hashable,Codable {
    
    let id: String
    var username:String
    var profileImageUrl:String?
    var fullname:String?
    var bio:String?
    var email:String
    
    var isCurrentUser: Bool {
        guard let currentUid = Auth.auth().currentUser?.uid else {return false}
        return currentUid == id
    }
}


extension User {
    static var MOCK_USERS:[User] = [
        .init(id: NSUUID().uuidString, username: "batman", profileImageUrl: nil, fullname: "bruce wayne", bio: "Gothman city", email: "batman@gmail.com"),
        .init(id: NSUUID().uuidString, username: "space", profileImageUrl: nil, fullname: "Mars ", bio: "Mars city", email: "mars@gmail.com"),
        .init(id: NSUUID().uuidString, username: "space1", profileImageUrl: nil, fullname: "saturn", bio: "saturn city", email: "saturn@gmail.com"),
        .init(id: NSUUID().uuidString, username: "neptune", profileImageUrl: nil, fullname: "Neptune wayne", bio: "Neptune city", email: "neptune@gmail.com")

    ]
}
