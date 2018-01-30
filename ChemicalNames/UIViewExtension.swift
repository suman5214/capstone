//
//  UIViewExtension.swift
//  AbatExtermination
//
//  Created by admin on 11/21/17.
//  Copyright © 2017 admin. All rights reserved.
//

import UIKit

extension UIView {

    func setShadow() {
        self.clipsToBounds = false
        self.layer.masksToBounds = false
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOpacity = 0.2
        self.layer.shadowRadius = 5
        self.layer.shadowOffset = CGSize(width: 3, height: 3)
    }
    
    func setCircle() {
        self.clipsToBounds = true
        self.layer.masksToBounds = true
        self.layer.cornerRadius = self.frame.width/2

    }
    
    func setBorder(width: CGFloat, color: UIColor) {
        self.layer.borderColor = color.cgColor
        self.layer.borderWidth = width
    }
    
    func roundCorners(_ corners: UIRectCorner, radius: CGFloat, borderWidth: CGFloat, color: UIColor) {
        let path = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        self.layer.mask = mask
        
        let borderLayer = CAShapeLayer()
        borderLayer.frame = self.bounds
        borderLayer.path  = path.cgPath
        borderLayer.lineWidth   = borderWidth
        borderLayer.strokeColor = color.cgColor
        borderLayer.fillColor   = UIColor.clear.cgColor
        self.layer.addSublayer(borderLayer)
    }
    
    enum ViewSide {
        case Left, Right, Top, Bottom
    }
    
    func addBorder(toSide side: ViewSide, withColor color: CGColor, andThickness thickness: CGFloat) {
        
        let border = CALayer()
        border.backgroundColor = color
        switch side {
        case .Left: border.frame = CGRect(x: bounds.minX, y: bounds.minY, width: thickness, height: bounds.height); break
        case .Right: border.frame = CGRect(x: bounds.maxX-thickness, y: bounds.minY, width: thickness, height: bounds.height); break
        case .Top: border.frame = CGRect(x: bounds.minX, y: bounds.minY, width: bounds.width, height: thickness); break
        case .Bottom: border.frame = CGRect(x: bounds.minX, y: bounds.maxY-thickness, width: bounds.width, height: thickness); break
        }
        
        layer.addSublayer(border)
    }


    
}
