//
//  Post.swift
//  BlockS
//
//  Created by Sajad Thapa on 29/8/2023.
//

import Foundation
import Firebase
struct Post:Identifiable,Hashable,Codable {
    let id: String
    let ownerUid:String
    let caption: String
    var likes: Int
    var imageUrl:String
    let timeStamp:Timestamp
    var user:User?
}

extension Post{
    static var MOCK_POSTS:[Post] = [
        .init(id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              caption: "This is some test caption",
              likes: 123,
              imageUrl: "batman",
              timeStamp: Timestamp(),
              user: User.MOCK_USERS[0]
             ),
        .init(id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              caption: "Mars forever",
              likes: 104,
              imageUrl: "space",
              timeStamp: Timestamp(),
              user: User.MOCK_USERS[3]
             ),
        .init(id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              caption: "Saturn forever",
              likes: 104,
              imageUrl: "space1",
              timeStamp: Timestamp(),
              user: User.MOCK_USERS[2]
             ),
        .init(id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              caption: "Neptune",
              likes: 123,
              imageUrl: "space2",
              timeStamp: Timestamp(),
              user: User.MOCK_USERS[1]
             )
    ]
}
