//
//  EmptySearchView.swift
//  Youtube_Test
//
//  Created by MeiXiang Wu on 7/11/22.
//

import UIKit

class EmptySearchView: UIView {

  // MARK: - Properties
  @IBOutlet weak var textLabel: UILabel!
  @IBOutlet weak var imageView: UIImageView!
  
  // MARK: - Life cycle
  override func awakeFromNib() {
    backgroundColor = UIColor.searchBackgroundColor
    textLabel.textColor = .white
    textLabel.text = "You can search any videos from youtube entering a term in the search box "
    imageView.backgroundColor = .clear
  }
  
  class func set(text: String) -> EmptySearchView {
    let view =  EmptySearchView.fromNib() as EmptySearchView
    view.textLabel.text = text
    return view
  }
}

extension EmptySearchView: NibLoadableView { }
