//
//  UIExtension.swift
//  JamitInterview
//
//  Created by Prof K on 9/3/21.
//

import UIKit

extension UIView {
    @IBInspectable var cornerRadius : CGFloat {
        get {
            return self.layer.cornerRadius
        }
        set {
            self.layer.cornerRadius = newValue
        }
    }
}
