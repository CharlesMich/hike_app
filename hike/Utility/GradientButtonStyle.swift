//
//  GradientButtonStyle.swift
//  hike
//
//  Created by Charles Michael on 8/10/24.
//

import Foundation
import SwiftUI

struct GradientButton: ButtonStyle {
    func makeBody(configuration: Configuration ) -> some View {
        configuration
            .label
            .padding(.vertical)
            .padding(.horizontal, 30)
            .background(
//                conditional statemtn with nil Coalescing
//                condotion ? A : B
                configuration.isPressed ?
//                A: When user passed the button
                LinearGradient(colors: [.customGrayMedium, .customGrayLight], startPoint: .top, endPoint: .bottom)
            :
//                B: when the button is not pressed
                LinearGradient(colors: [.customGrayLight, .customGrayMedium], startPoint: .top, endPoint: .bottom)
            )
            .cornerRadius(40)
    }
}
