//
//  LoginVIew.swift
//  BlockS
//
//  Created by Sajad Thapa on 26/8/2023.
//

import SwiftUI

struct LoginVIew: View {
    @StateObject var viewModel = LoginViewModel()
    var body: some View {
        NavigationStack{
            VStack{
                Spacer()
                //logo image
                Image("Instagram")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 225,height: 110)
                
                // text fields
                
                VStack {
                    TextField("Enter your email",text:$viewModel.email)
                        .autocapitalization(.none)
                        .modifier(IGTextFieldModifier())
                    
                    SecureField("Enter your Password",text:$viewModel.password)
                        .modifier(IGTextFieldModifier())
                }
                Button {
                    print("Forgot Password")
                } label: {
                    Text("Forgot Password")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.top)
                        .padding(.trailing,28)
                }
                .frame(maxWidth:.infinity,alignment: .trailing)
                
                Button {
                    Task {try await viewModel.signIn()}
                } label: {
                    Text("Login")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 360,height: 44)
                        .background(Color(.systemBlue))
                        .cornerRadius(10)
                    
                }
                .padding(.vertical)
                
                HStack{
                    Rectangle()
                        .frame(width: (UIScreen.main.bounds.width/2)-40,height: 0.5)
                    Text("OR")
                        .font(.footnote)
                        .fontWeight(.semibold)
                    
                    Rectangle()
                        .frame(width: (UIScreen.main.bounds.width/2)-40,height: 0.5)
                    
                }.foregroundColor(.gray)
                
                HStack{
                    Image("Facebook-logo")
                        .resizable()
                        .frame(width: 20,height: 20)
                    Text("Continue with Facebook")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .foregroundColor(Color(.systemBlue))
                }
                .padding(.top,8)
                
                Spacer()
                
                Divider()
                
                NavigationLink{
                        AddEmailView()
                        .navigationBarBackButtonHidden(true)
                }
                label:{
                    HStack(spacing:3){
                    Text("Dont have an account?")
                    
                    Text("Sign up")
                        .fontWeight(.semibold)
                    
                }
                .font(.footnote)
                }.padding(.vertical,16)
                
                

            }
            
        }
        
    }
}

struct LoginVIew_Previews: PreviewProvider {
    static var previews: some View {
        LoginVIew()
    }
}
