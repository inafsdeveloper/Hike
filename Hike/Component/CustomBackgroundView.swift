//
//  CustomBackgroundView.swift
//  Hike
//
//  Created by Pankaj Nafria on 7/25/23.
//

import SwiftUI

struct CustomBackgroundView: View {
    var body: some View {
        ZStack {
            // MARK: 3. DEPTH
            Color.customGreenDark
                .cornerRadius(40)
                .offset(y: 12)
            
            // MARK: 2. LIGHT
            Color.customGrayLight
                .cornerRadius(40)
                .offset(y: 3)
                .opacity(0.85)
            
            // MARK: 1. SURFACE
            LinearGradient(
                colors: [
                    Color.customGreenDark,
                    Color.customGreenLight],
                startPoint: .top,
                endPoint: .bottom
            )
            .cornerRadius(40)
        }
        
    }
}

struct CustomBackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        CustomBackgroundView()
    }
}
