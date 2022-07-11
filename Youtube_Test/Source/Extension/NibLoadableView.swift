//
//  NibLoadableView.swift
//  Youtube_Test
//
//  Created by MeiXiang Wu on 7/11/22.
//
import UIKit

protocol NibLoadableView: class {
    static var nibName: String { get }
}

extension NibLoadableView where Self: UIView {
    static var nibName: String {
        return NSStringFromClass(self).components(separatedBy: ".").last!
    }
  
  static func fromNib<T: UIView>() -> T {
    return Bundle.main.loadNibNamed(nibName, owner: nil, options: nil)![0] as! T
  }
}

