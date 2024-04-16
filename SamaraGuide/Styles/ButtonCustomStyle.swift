//
//  ButtonCustomStyle.swift
//  SamaraGuide
//
//  Created by Victoria Semenycheva on 12.04.2024.
//

import Foundation
import SwiftUI

struct ButtonCustomStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
            HStack {
                Spacer()
                configuration.label
                Spacer()
            }
            .font(.system(.headline, design: .rounded).bold())
            .padding(EdgeInsets(top: 15, leading: 25, bottom: 15, trailing: 25))
            .foregroundColor(.white)
            .background(.blue)
            .clipShape(
                Capsule()
            )
            .padding(EdgeInsets(top: 5, leading: 0, bottom: 5, trailing: 0))
        }
}
