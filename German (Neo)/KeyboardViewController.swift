//
//  KeyboardViewController.swift
//  German (Neo)
//
//  Created by Jean-Pierre Höhmann on 19.03.22.
//

import Foundation
import UIKit
import KeyboardKit
import SwiftUI


class KeyboardViewController: KeyboardInputViewController {

    override func viewDidLoad() {
        keyboardLayoutProvider = NeoKeyboardLayoutProvider()
        super.viewDidLoad()
    }

    override func viewWillSetupKeyboard() {
        super.viewWillSetupKeyboard()
        setup { controller in SystemKeyboard(controller: controller, autocompleteToolbar: .none) }
    }

}
