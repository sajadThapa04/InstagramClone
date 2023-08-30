//
//  SearchVIew.swift
//  BlockS
//
//  Created by Sajad Thapa on 26/8/2023.
//

import SwiftUI

struct SearchVIew: View {
    @State private var searchText = ""
    @StateObject var viewModel = SearchViewModel()
    var body: some View {
        NavigationStack {
            ScrollView{
                LazyVStack(spacing:12){
                    ForEach(viewModel.users) {
                        user in
                        NavigationLink(value: user) {
                            HStack{
                                CircularProfileImageView(user: user, size: .xSmall)
                                
                                VStack(alignment:.leading){
                                    Text(user.username)
                                        .fontWeight(.semibold)
                                
                                    if let fullname = user.fullname {
                                        Text(fullname)
                                    }
                                }
                                .font(.footnote)
                                Spacer()
                            }
                            .padding(.horizontal)
                        }
                    }
                }
                .padding(.top,8)
                .searchable(text: $searchText,prompt: "search...")
            }.navigationDestination(for: User.self, destination:{
                user in ProfileView(user: user)

            })
            
            .navigationTitle("Explorer")
        .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct SearchVIew_Previews: PreviewProvider {
    static var previews: some View {
        SearchVIew()
    }
}
