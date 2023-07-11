//
//  StandardNeoKeyboardLayoutProvider.swift
//  Neo Keyboard
//
//  Created by Jean-Pierre Höhmann on 2022-03-22.
//
//

import Foundation
import KeyboardKit

class StandardNeoKeyboardLayoutProvider: StandardKeyboardLayoutProvider {
    override init(
            inputSetProvider: InputSetProvider,
            dictationReplacement: KeyboardAction? = nil
    ) {
        super.init(inputSetProvider: inputSetProvider, dictationReplacement: dictationReplacement)
        iPhoneProvider = iPhoneNeoKeyboardLayoutProvider(
                inputSetProvider: inputSetProvider,
                dictationReplacement: dictationReplacement
        )
        iPadProvider = iPadNeoKeyboardLayoutProvider(
                inputSetProvider: inputSetProvider,
                dictationReplacement: dictationReplacement
        )
    }
}