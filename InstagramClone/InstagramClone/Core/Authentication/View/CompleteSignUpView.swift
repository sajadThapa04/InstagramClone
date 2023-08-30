//
//  CompleteSignUpView.swift
//  BlockS
//
//  Created by Sajad Thapa on 26/8/2023.
//

import SwiftUI

struct CompleteSignUpView: View {
    @Environment(\.dismiss) var dismiss

    @EnvironmentObject var viewModel:RegistrationViewModel
    var body: some View {
        VStack(spacing:12){
            Spacer()
            Text("Welcome to Instagtam, \(viewModel.username)")
                .font(.title)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .padding(.top)
            
            Text("Click below to complete registration and start using instagram")
                .font(.footnote)
                .multilineTextAlignment(.center)
                .padding(.horizontal,24)
            
                        
            Button{
                Task {try await viewModel.createUser()}
            } label: {
                Text("Complete signup")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .frame(width: 360,height: 44)
                    .background(Color(.systemBlue))
                    .cornerRadius(10)
            }
            .padding(.vertical)

            Spacer()
            
        }
        
        }
        
    }



struct CompleteSignUpView_Previews: PreviewProvider {
    static var previews: some View {
        CompleteSignUpView()
    }
}
