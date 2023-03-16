//
//  UIView+Extension.swift
//  Food Ordering App
//
//  Created by Ahmet Can Topcu on 14.03.2023.
//

import UIKit


extension UIView {
    @IBInspectable var cornerRadius: CGFloat {
        get{return cornerRadius}
        set{
            self.layer.cornerRadius = newValue
        }
    }
}
