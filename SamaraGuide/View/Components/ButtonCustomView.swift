//
//  ButtonCustomView.swift
//  SamaraGuide
//
//  Created by Victoria Semenycheva on 12.04.2024.
//

import SwiftUI

struct ButtonCustomView: View {
    var buttonText: String
    var action: () -> Void

    var body: some View {
        Button(action: {
            self.action()
        }) {
            Text(buttonText)
        }
        .buttonStyle(ButtonCustomStyle())

    }
}
