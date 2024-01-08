//
//  UIViewExtensions.swift
//  MovieTrending
//
//  Created by 강석호 on 2024/01/08.
//

import Foundation
import UIKit


extension UIView {
    func round( _ radius: CGFloat = 10) {
        self.layer.cornerRadius = radius
        self.clipsToBounds = true
    }
    
    func addBorder(color: UIColor, width: CGFloat) {
        self.layer.borderWidth = width
        self.layer.borderColor = color.cgColor
    }
}
