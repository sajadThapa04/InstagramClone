//
//  SearchViewModel.swift
//  InstagramClone
//
//  Created by Sajad Thapa on 29/8/2023.
//

import Foundation
class SearchViewModel: ObservableObject  {
    
    @Published var users = [User]()
    
    init(){
        Task {try await fetchAllUsers()}
    }
    
@MainActor
func fetchAllUsers() async throws {
    self.users = try await UserService().fetchAllUser()
    }
}
