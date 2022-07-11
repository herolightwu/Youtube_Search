//
//  ReusableView.swift
//  Youtube_Test
//
//  Created by MeiXiang Wu on 7/11/22.
//

import UIKit

protocol ReusableView: class{
    static var reuseIdentifier: String { get }
}

extension ReusableView where Self: UIView{
    static var reuseIdentifier: String{
        return NSStringFromClass(self)
    }
}
