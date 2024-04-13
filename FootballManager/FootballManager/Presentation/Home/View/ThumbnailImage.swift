//
//  ThumbnailImage.swift
//  FootballManager
//
//  Created by kyungsoolee on 4/13/24.
//

import SwiftUI

struct ThumbnailImage: View {
    var imageName: String = "DefaultImage"
    var body: some View {
        Image("\(imageName)")
            .resizable()
            .scaledToFit()
            .frame(height: 100)
        
    }
}

#Preview {
    ThumbnailImage()
}
