//
//  Raleway.swift
//  QuickConnct
//
//  Created by Colinzinho Development on 12.05.2025.
//

import SwiftUI

struct CustomFontModifier: ViewModifier {
    func body(content: Content) -> some View {
        content.font(.custom("Raleway", size: 16))
    }
}

extension View {
    func defaultFont() -> some View {
        self.modifier(CustomFontModifier())
    }
}
