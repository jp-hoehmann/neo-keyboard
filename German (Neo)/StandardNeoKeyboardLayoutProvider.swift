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
            keyboardContext: KeyboardContext,
            inputSetProvider: InputSetProvider,
            localizedProviders: [LocalizedKeyboardLayoutProvider] = [EnglishKeyboardLayoutProvider()]
    ) {
        super.init(
            keyboardContext: keyboardContext,
            inputSetProvider: inputSetProvider,
            localizedProviders: localizedProviders)
        iPhoneProvider = iPhoneNeoKeyboardLayoutProvider(
                inputSetProvider: inputSetProvider,
                dictationReplacement: keyboardContext.keyboardDictationReplacement
        )
        iPadProvider = iPadNeoKeyboardLayoutProvider(
                inputSetProvider: inputSetProvider,
                dictationReplacement: keyboardContext.keyboardDictationReplacement
        )
    }
}
