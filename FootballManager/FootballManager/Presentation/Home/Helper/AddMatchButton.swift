//
//  AddMatchButton.swift
//  FootballManager
//
//  Created by kyungsoolee on 4/16/24.
//

import SwiftUI

struct AddMatchButton: View {
    @Binding var isPresentedAddMatchView: Bool
    var body: some View {
        Button {
            isPresentedAddMatchView.toggle()
        } label: {
            Image(systemName: "square.and.pencil.circle")
                .resizable()
                .scaledToFit()
                .frame(height: 30)
                .foregroundStyle(Color.black)
                .padding(6)
                .background(Color.gray)
                .clipShape(RoundedRectangle.init(cornerRadius: 10))
        }
    }
}

#Preview {
    AddMatchButton(isPresentedAddMatchView: .constant(false))
}
