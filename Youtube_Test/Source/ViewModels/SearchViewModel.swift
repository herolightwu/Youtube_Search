//
//  SearchViewModel.swift
//  Youtube_Test
//
//  Created by MeiXiang Wu on 7/11/22.
//

class SearchViewModel {
  
  // MARK: View Model State
  enum State {
    case fetching
    case success
    case clear
    case noSarchResults(text: String)
    case error
    case idle
  }
  
  // MARK: - Properties
  private(set) var dataSource: [ItemViewModel] = []
  
  typealias Listener = (_ status: State) -> Void
  var listener: Listener?
  var state: State = .idle {
    didSet {
      listener?(state)
    }
  }
  
  // MARK: - Pubic
  func bindState(_ listener: @escaping Listener) {
    self.listener = listener
  }
  
  func unbindState() {
    self.listener = nil
  }
  
  // MARK: - Networking
  func search(text: String) {
    state = .fetching
    RequestManager.shared().searchVideos(text: text) { [unowned self] (items) in
      self.dataSource = items

      if items.count > 0 {
        self.state = .success
      } else {
        self.state = .noSarchResults(text: text)
      }
    }
  }
  
  // MARK: - Data
  func count() -> Int {
    return dataSource.count
  }
  
  func clearSerch() {
    self.dataSource = []
    self.state = .clear
  }
  
  // MARK: - Private


}
