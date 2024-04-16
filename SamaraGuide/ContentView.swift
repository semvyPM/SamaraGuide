//
//  ContentView.swift
//  SamaraGuide
//
//  Created by Victoria Semenycheva on 05.04.2024.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @StateObject private var vm = MapViewModel()
    
    var body: some View {
        SignInView()
//        MapView()
//            .environmentObject(vm)
    }
}

#Preview {
    ContentView()
}
