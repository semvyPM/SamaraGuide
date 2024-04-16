//
//  TextFieldCustomStyle.swift
//  SamaraGuide
//
//  Created by Victoria Semenycheva on 12.04.2024.
//

import Foundation
import SwiftUI

struct TextFieldCustomStyle: TextFieldStyle {
    @Environment(\.colorScheme) var colorScheme
    
    func _body(configuration: TextField<Self._Label>) -> some View {
            configuration
            .disableAutocorrection(true)
            .font(.system(.headline, design: .rounded).bold())
            .foregroundColor(.blue)
            .padding(EdgeInsets(top: 15, leading: 25, bottom: 15, trailing: 25))
            .background {
                Capsule()
                    .fill(colorScheme == .light ? Color.white : Color.black)
            }
            .overlay{
                Capsule()
                    .stroke(Color.blue, lineWidth: 1)
            }
            .padding(EdgeInsets(top: 5, leading: 0, bottom: 5, trailing: 0))
    }
}
