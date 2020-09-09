//
//  ThemeProvider.swift
//  OracleMagic
//
//  Created by Fernando Martín Ortiz on 31/08/2020.
//  Copyright © 2020 Fernando Martín Ortiz. All rights reserved.
//

import SwiftUI
import Combine

protocol ColorTheme {
    var mainColor: Color { get }
    var accentColor: Color { get }
    var backgroundColor: Color { get }
}

struct LightTheme: ColorTheme {
    var mainColor: Color {
        .black
    }
    
    var accentColor: Color {
        .blue
    }
    
    var backgroundColor: Color {
        .white
    }
}

struct DarkTheme: ColorTheme {
    var mainColor: Color {
        .white
    }
    
    var accentColor: Color {
        .blue
    }
    
    var backgroundColor: Color {
        .black
    }
}

final class ThemeProvider: ObservableObject {
    @Published var color: ColorTheme = LightTheme()
    
    func invert() {
        if color is LightTheme {
            color = DarkTheme()
        } else {
            color = LightTheme()
        }
    }
}
