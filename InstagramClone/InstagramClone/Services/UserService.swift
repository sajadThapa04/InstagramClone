//
//  UserService.swift
//  InstagramClone
//
//  Created by Sajad Thapa on 29/8/2023.
//

import Foundation
import Firebase
struct UserService {
    static func fetchUser(withUid uid:String) async throws -> User {
      
        let snapshot = try await Firestore.firestore().collection("users").document(uid).getDocument()
        return try snapshot.data(as: User.self)
    }
    @MainActor
    func fetchAllUser() async throws -> [User] {
        let snapshot = try await Firestore.firestore().collection("users").getDocuments()
        
        return snapshot.documents.compactMap({try? $0.data(as: User.self)})
    }
}
