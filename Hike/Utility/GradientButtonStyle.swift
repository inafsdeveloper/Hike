//
//  GradientButtonStyle.swift
//  Hike
//
//  Created by Pankaj Nafria on 7/25/23.
//

import Foundation
import SwiftUI

struct GradientButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .padding(.vertical)
            .padding(.horizontal)
            .background(
                // Conditional Statement with Nil Coalescing
                // Condtion ? A : B
                // A: When User pressed the button
                // B: When the button is not pressed
                configuration.isPressed ?
                LinearGradient(
                    colors:
                        [.customGrayMedium,
                         .customGrayLight],
                    startPoint: .top,
                    endPoint: .bottom)
                :
                    LinearGradient(
                        colors:
                            [.customGrayLight,
                             .customGrayMedium],
                        startPoint: .top,
                        endPoint: .bottom)
            )
            .cornerRadius(40)
    }
}
