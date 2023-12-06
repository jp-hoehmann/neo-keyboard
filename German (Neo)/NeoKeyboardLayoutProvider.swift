//
//  NeoKeyboardLayoutProvider.swift
//  German (Neo)
//
//  Created by Jean-Pierre Höhmann on 2023-12-06.
//
//

import Foundation
import KeyboardKit


class NeoKeyboardLayoutProvider: KeyboardLayoutProvider {
    
    /**
     The locale identifier.
     */
    public static var localeKey: String {
        KeyboardLocale.german.id
    }
    
    /**
     The input set to use for alphanumeric keyboards.
     */
    public static var alphabeticInputSet: AlphabeticInputSet {
        AlphabeticInputSet(rows: [
            InputSetRow(chars: "xvlcwkhgfqß"),
            InputSetRow(chars: "uiaeosnrtdy"),
            InputSetRow(lowercased: "üöäpzbm,.j", uppercased: "ÜÖÄPZBM–•J")
        ])
    }
    
    /**
     The input set to use for numeric keyboards.
     */
    public static var numericInputSet: NumericInputSet {
        NumericInputSet(rows: [
            InputSetRow(chars: "1234567890'"),
            InputSetRow(chars: "\\/{}*?()-:@"),
            InputSetRow(chars: "°§ℓ»«$€„“”"),
        ])
    }
    
    /**
     The input set to use for symbolic keyboards.
     */
    public static var symbolicInputSet: SymbolicInputSet {
        SymbolicInputSet(rows: [
            InputSetRow(chars: "#$|~`+%\"'; "),
            InputSetRow(chars: "…_[]^!<>=&ſ"),
            InputSetRow(chars: "¹²³›‹¢¥‚‘’")
        ])
    }
    
    /**
     The input set provider, if any was registered.
     */
    private var inputSetProvider: KeyboardKit.InputSetProvider?
    
    func keyboardLayout(for context: KeyboardContext) -> KeyboardLayout {
        // Currently there is no device-specific layout.  If there were, we'd switch on context.deviceType here.
        iPhoneNeoKeyboardLayoutProvider(
            alphabeticInputSet: inputSetProvider?.alphabeticInputSet ?? NeoKeyboardLayoutProvider.alphabeticInputSet,
            numericInputSet: inputSetProvider?.numericInputSet ?? NeoKeyboardLayoutProvider.numericInputSet,
            symbolicInputSet: inputSetProvider?.symbolicInputSet ?? NeoKeyboardLayoutProvider.symbolicInputSet)
        .keyboardLayout(for: context)
    }
    
    func register(inputSetProvider: KeyboardKit.InputSetProvider) {
        self.inputSetProvider = inputSetProvider
    }
    
}
