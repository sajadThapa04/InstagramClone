//
//  FeedViewModel.swift
//  InstagramClone
//
//  Created by Sajad Thapa on 30/8/2023.
//

import Foundation
import Firebase

class FeedViewModel: ObservableObject {
    @Published var posts = [Post]()
    
    init() {
        
        Task { try await fetchPosts()}
    }
    @MainActor
    
    func fetchPosts() async throws{
        self.posts = try await PostService.fetchFeedPosts()
        
    }
}
