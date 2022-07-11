//
//  UINavigationBar+Blur.swift
//  Youtube_Test
//
//  Created by MeiXiang Wu on 7/11/22.
//

import UIKit

extension UINavigationBar {
  func installBlurEffect() {
    isTranslucent = true
    setBackgroundImage(UIImage(), for: .default)
    let statusBarHeight: CGFloat = UIApplication.shared.statusBarFrame.height
    var blurFrame = bounds
    blurFrame.size.height += statusBarHeight
    blurFrame.origin.y -= statusBarHeight
    let blurView  = UIVisualEffectView(effect: UIBlurEffect(style: .dark))
    blurView.isUserInteractionEnabled = false
    blurView.frame = blurFrame
    blurView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
    addSubview(blurView)
    blurView.layer.zPosition = -1
  }
}
