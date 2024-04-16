//
//  TextFieldCustomView.swift
//  SamaraGuide
//
//  Created by Victoria Semenycheva on 12.04.2024.
//

import SwiftUI

struct TextFieldCustomView: View {
    @Binding var text: String
    var placeholder: String
    
    var body: some View {
        TextField(placeholder, text: $text)
            .textFieldStyle(TextFieldCustomStyle())
    }
}
