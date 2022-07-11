//
//  SearchViewController+Constraints.swift
//  Youtube_Test
//
//  Created by MeiXiang Wu on 7/11/22.
//

import UIKit

extension SearchViewController {
  
  override func updateViewConstraints() {
    super.updateViewConstraints()
    
    // Set constraints
    let views = ["tableView": tableView]
    var constraints: [NSLayoutConstraint] = []
    let hConstraint = NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[tableView]-10-|", metrics: [:], views: views)
    let vConstraint = NSLayoutConstraint.constraints(withVisualFormat: "V:|[tableView]|", metrics: [:], views: views)
    constraints.append(contentsOf: hConstraint)
    constraints.append(contentsOf: vConstraint)
    NSLayoutConstraint.activate(constraints)
  }
}
