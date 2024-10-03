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
        services.layoutService = NeoKeyboardLayoutService()
        super.viewDidLoad()
    }

    override func viewWillSetupKeyboard() {
        super.viewWillSetupKeyboard()
        setup { controller in
            KeyboardView(
                    state: controller.state,
                    services: controller.services,
                    buttonContent: { $0.view },
                    buttonView: { $0.view },
                    emojiKeyboard: { $0.view },
                    toolbar: { _ in EmptyView() })
        }
    }

}
