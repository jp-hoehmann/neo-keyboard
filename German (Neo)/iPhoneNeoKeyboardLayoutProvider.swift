//
//  iPhoneNeoKeyboardLayoutProvider.swift
//  Neo Keyboard
//
//  Created by Jean-Pierre Höhmann on 2022-03-22.
//
//

import Foundation
import KeyboardKit

class iPhoneNeoKeyboardLayoutProvider: iPhoneKeyboardLayoutProvider {
    override func itemSizeWidth(
            for action: KeyboardAction,
            row: Int,
            index: Int,
            context: KeyboardContext
    ) -> KeyboardLayoutItemWidth {
        switch action {
        case .character, .backspace: return .input
        default: return super.itemSizeWidth(for: action, row: row, index: index, context: context)
        }
    }

    override func lowerLeadingActions(for actions: KeyboardActionRows, context: KeyboardContext) -> KeyboardActions {
        []
    }

    override func lowerTrailingActions(for actions: KeyboardActionRows, context: KeyboardContext) -> KeyboardActions {
        [.backspace]
    }

    override func bottomActions(for context: KeyboardContext) -> KeyboardActions {
        [
            context.needsInputModeSwitchKey.then(.nextKeyboard),
            keyboardSwitchActionForBottomRow(for: context),
            keyboardSwitchActionForBottomInputRow(for: context),
            .space,
            keyboardReturnAction(for: context)
        ].compacted()
    }
}
