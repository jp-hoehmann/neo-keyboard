//
//  NeoKeyboardLayoutProvider.swift
//  German (Neo)
//
//  Created by Jean-Pierre Höhmann on 2023-12-06.
//
//

import Foundation
import KeyboardKit


class NeoKeyboardLayoutService: KeyboardLayoutService {
    
    /// The locale identifier.
    ///
    public static var localeKey: String {
        Locale.german.identifier
    }
    
    /// The input set to use for alphanumeric keyboards.
    ///
    public static var alphabeticInputSet: InputSet {
        InputSet(rows: [
            InputSet.ItemRow(chars: "xvlcwkhgfqß"),
            InputSet.ItemRow(chars: "uiaeosnrtdy"),
            InputSet.ItemRow(lowercased: "üöäpzbm,.j", uppercased: "ÜÖÄPZBM–•J")
        ])
    }
    
    /// The input set to use for numeric keyboards.
    ///
    public static var numericInputSet: InputSet {
        InputSet(rows: [
            InputSet.ItemRow(chars: "1234567890'"),
            InputSet.ItemRow(chars: "\\/{}*?()-:@"),
            InputSet.ItemRow(chars: "°§ℓ»«$€„“”"),
        ])
    }
    
    /// The input set to use for symbolic keyboards.
    ///
    public static var symbolicInputSet: InputSet {
        InputSet(rows: [
            InputSet.ItemRow(chars: "#$|~`+%\"'; "),
            InputSet.ItemRow(chars: "…_[]^!<>=&ſ"),
            InputSet.ItemRow(chars: "¹²³›‹¢¥‚‘’")
        ])
    }
    
    func keyboardLayout(for context: KeyboardContext) -> KeyboardLayout {
        // Currently there is no device-specific layout.  If there were, we'd switch on context.deviceType here.
        iPhoneNeoKeyboardLayoutService(
            alphabeticInputSet: NeoKeyboardLayoutService.alphabeticInputSet,
            numericInputSet: NeoKeyboardLayoutService.numericInputSet,
            symbolicInputSet: NeoKeyboardLayoutService.symbolicInputSet)
            .keyboardLayout(for: context)
    }

}
