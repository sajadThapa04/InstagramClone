//
//  CircularProfileImageView.swift
//  InstagramClone
//
//  Created by Sajad Thapa on 30/8/2023.
//

import SwiftUI
import Kingfisher

enum profileImageSize {
    case xSmall
    case small
    case medium
    case large
    var dimension: CGFloat{
        switch self {
        case .xSmall:
            return 40
        case .small:
            return 48
        case .medium:
            return 64
        case .large:
            return 80
        }
    }
}
struct CircularProfileImageView: View {
    let user : User
    let size : profileImageSize
    var body: some View {
        if let imageUrl = user.profileImageUrl{
            KFImage(URL(string: imageUrl))
            .resizable()
            .scaledToFill()
            .frame(width:size.dimension , height: size.dimension)
            .clipShape(Circle())
            
        }else {
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: size.dimension,height: size.dimension)
                .clipShape(Circle())
                .foregroundColor(Color(.systemGray4))
        }
          
    }
}

struct CircularProfileImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircularProfileImageView(user: User.MOCK_USERS[0], size: .large)
    }
}
