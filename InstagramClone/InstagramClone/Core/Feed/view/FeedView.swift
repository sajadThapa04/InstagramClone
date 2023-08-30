//
//  FeedVIew.swift
//  BlockS
//
//  Created by Sajad Thapa on 26/8/2023.
//

import SwiftUI

struct FeedVIew: View {
    @StateObject var viewModel = FeedViewModel()
    var body: some View {
        NavigationStack {
            ScrollView{
                
                LazyVStack(spacing:32){
                    ForEach(viewModel.posts){
                        post in
                        FeedCell(post: post)
                    }
                }
                .padding(.top,8)
            }.navigationTitle("feed")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar{
                    ToolbarItem(placement:.navigationBarLeading) {
                        Image("Instagram")
                            .resizable()
                            .frame(width: 100,height: 60)
                    }
                    
                    ToolbarItem(placement:.navigationBarTrailing) {
                        Image(systemName: "paperplane")
                            .imageScale(.large)
                            
                    }
                }
        }
        }
}

struct FeedVIew_Previews: PreviewProvider {
    static var previews: some View {
        FeedVIew()
    }
}
