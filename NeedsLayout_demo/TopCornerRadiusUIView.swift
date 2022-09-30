//
//  TopCornerRadiusUIView.swift
//  NeedsLayout_demo
//
//  Created by Steven on 2022/9/28.
//

import UIKit

extension UIView {

    func setTopCornerRadius(radius: CGFloat) {
        
        self.layer.cornerRadius = radius
        self.clipsToBounds = true
        
        self.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
    }
}
