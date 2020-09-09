//
//  ContentView.swift
//  OracleMagic
//
//  Created by Fernando Martín Ortiz on 31/08/2020.
//  Copyright © 2020 Fernando Martín Ortiz. All rights reserved.
//

import SwiftUI

struct ContentView: View {
//    @State var soundOn = false
    
    var body: some View {
//        Toggle(isOn: $soundOn) {
//            Text(soundOn ? "Sound On" : "Muted")
//        }
        NavigationView {
            CardsListObservedObject()
        }
        .environmentObject(ThemeProvider())
    }
}
