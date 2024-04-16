//
//  EditView.swift
//  FootballManager
//
//  Created by kyungsoolee on 4/16/24.
//

import SwiftUI

struct EditView: View {
    @Binding var isPresentedView: Bool
    
    var body: some View {
        VStack {
            Button {
                isPresentedView.toggle()
            } label: {
                Text("TEST")
            }
        }
    }
}

#Preview {
    EditView(isPresentedView: .constant(false))
}
