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
    public static var alphabeticInputSet: InputSet {
        InputSet(rows: [
            InputSet.Row(chars: "xvlcwkhgfqß"),
            InputSet.Row(chars: "uiaeosnrtdy"),
            InputSet.Row(lowercased: "üöäpzbm,.j", uppercased: "ÜÖÄPZBM–•J")
        ])
    }
    
    /**
     The input set to use for numeric keyboards.
     */
    public static var numericInputSet: InputSet {
        InputSet(rows: [
            InputSet.Row(chars: "1234567890'"),
            InputSet.Row(chars: "\\/{}*?()-:@"),
            InputSet.Row(chars: "°§ℓ»«$€„“”"),
        ])
    }
    
    /**
     The input set to use for symbolic keyboards.
     */
    public static var symbolicInputSet: InputSet {
        InputSet(rows: [
            InputSet.Row(chars: "#$|~`+%\"'; "),
            InputSet.Row(chars: "…_[]^!<>=&ſ"),
            InputSet.Row(chars: "¹²³›‹¢¥‚‘’")
        ])
    }
    
    func keyboardLayout(for context: KeyboardContext) -> KeyboardLayout {
        // Currently there is no device-specific layout.  If there were, we'd switch on context.deviceType here.
        iPhoneNeoKeyboardLayoutProvider(
            alphabeticInputSet: NeoKeyboardLayoutProvider.alphabeticInputSet,
            numericInputSet: NeoKeyboardLayoutProvider.numericInputSet,
            symbolicInputSet: NeoKeyboardLayoutProvider.symbolicInputSet)
            .keyboardLayout(for: context)
    }

}
