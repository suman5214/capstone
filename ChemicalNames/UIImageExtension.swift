//
//  UIImageExtension.swift
//  AbatExtermination
//
//  Created by admin on 1/25/18.
//  Copyright © 2018 admin. All rights reserved.
//

import UIKit

extension UIImage {
    func resize(with newSize: CGSize)->UIImage?
    {
        UIGraphicsBeginImageContextWithOptions(newSize, false, 0.0)
        draw(in: CGRect(x: 0, y: 0, width: newSize.width, height: newSize.height))
        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext();
        return newImage

    }
}

