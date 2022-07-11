//
//  SnippetModel.swift
//  Youtube_Test
//
//  Created by MeiXiang Wu on 7/11/22.
//

import ObjectMapper

class SnippetModel {
  
  var channelId: String?
  var title: String?
  var description: String?
  var publishedDate: String?
  var thumbailUrl: URL?
  
  required convenience init?(map: Map) {
    self.init()
  }
}

extension SnippetModel:  Mappable {
  
  // MARK: - Mapping
  func mapping(map: Map) {
    channelId     <- map["channelId"]
    title         <- map["title"]
    description   <- map["description"]
    thumbailUrl   <- (map["thumbnails.medium.url"], URLTransform())
    publishedDate <- map["publishedAt"]
  }
}

