//
//  IGTextFieldModifier.swift
//  BlockS
//
//  Created by Sajad Thapa on 26/8/2023.
//
import SwiftUI

struct IGTextFieldModifier:ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .padding(12)
            .background(Color(.systemGray6))
            .cornerRadius(10)
            .padding(.horizontal,24)
    }
}
