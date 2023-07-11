//
//  NeoInputSetProvider.swift
//  Neo Keyboard
//
//  Created by Jean-Pierre Höhmann on 2022-03-20.
//
//

import Foundation
import KeyboardKit

public class NeoInputSetProvider: LocalizedInputSetProvider {

    /**
     The locale identifier.
     */
    public let localeKey: String = KeyboardLocale.german.id

    /**
     The input set to use for alphanumeric keyboards.
     */
    public var alphabeticInputSet: AlphabeticInputSet {
        AlphabeticInputSet(rows: [
            row("xvlcwkhgfqß"),
            row("uiaeosnrtdy"),
            row(lowercased: "üöäpzbm,.j", uppercased: "ÜÖÄPZBM–•J")
        ])
    }

    /**
     The input set to use for numeric keyboards.
     */
    public var numericInputSet: NumericInputSet {
        NumericInputSet(rows: [
            row("1234567890'"),
            row("\\/{}*?()-:@"),
            row("°§ℓ»«$€„“”"),
        ])
    }

    /**
     The input set to use for symbolic keyboards.
     */
    public var symbolicInputSet: SymbolicInputSet {
        SymbolicInputSet(rows: [
            row("#$|~`+%\"'; "),
            row("…_[]^!<>=&ſ"),
            row("¹²³›‹¢¥‚‘’")
        ])
    }
}