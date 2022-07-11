//
//  ContentDetaiModel.swift
//  Youtube_Test
//
//  Created by MeiXiang Wu on 7/11/22.
//

import ObjectMapper

class ContentDetaiModel {

  var duration: String?
  
  required convenience init?(map: Map) {
    self.init()
  }
}

extension ContentDetaiModel: Mappable {
 
  func mapping(map: Map) {
    duration <- (map["duration"], YTDuration())
  }
}
