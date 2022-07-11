//
//  SearchViewController+Search.swift
//  Youtube_Test
//
//  Created by MeiXiang Wu on 7/11/22.
//

import UIKit

// MARK: - UISearchController Updater
extension SearchViewController: UISearchResultsUpdating {
  func updateSearchResults(for searchController: UISearchController) {
    if let text = searchController.searchBar.text, !text.isEmpty {
      viewModel.search(text: text)
    }
  }
}

extension SearchViewController: UISearchBarDelegate {
  
  func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
    viewModel.clearSerch()
  }
  
  func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
    searchController.isActive = false
  }
}

