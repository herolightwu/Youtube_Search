//
//  ItemViewModel.swift
//  Youtube_Test
//
//  Created by MeiXiang Wu on 7/11/22.
//

import Foundation

class ItemViewModel {
  
  // MARK: - Properties
  let model: ItemModel!
  
  var videoId: String {
    return self.model.videoId ?? ""
  }
  
  var published: String {
    guard let dateString = self.model.snippet?.publishedDate else { return "" }

    var formatter = DateFormatter()
    formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZZZZZ"
    formatter.timeZone = TimeZone(secondsFromGMT: 0)
    formatter.locale = Locale(identifier: "en_US_POSIX")
    let date = formatter.date(from: dateString) ?? Date()
    
    formatter = DateFormatter()
    formatter.dateStyle = .medium
    return formatter.string(from: date)
    
  }
  var duration: String {
    return self.model.detail?.duration ?? ""
  }
  
  var title: String {
    return self.model.snippet?.title ?? ""
  }

  var imageUrl: URL? {
    return self.model.snippet?.thumbailUrl
  }
  
  // MARK: - Initialization
  init(itemModel: ItemModel) {
    self.model = itemModel
  }
}
