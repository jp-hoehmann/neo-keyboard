//
//  KeyboardView.swift
//  Neo Keyboard
//
//  Created by Jean-Pierre Höhmann on 2022-03-22.
//
//

import Foundation
import SwiftUI
import KeyboardKit


struct KeyboardView: View {

    @EnvironmentObject private var context: KeyboardContext

    var body: some View {
        VStack(spacing: 0) {
            SystemKeyboard()
        }
    }

}