//
//  YTDuration.swift
//  Youtube_Test
//
//  Created by MeiXiang Wu on 7/11/22.
//

import Foundation
import ObjectMapper

class YTDuration: TransformType {
  
  typealias Object = String
  typealias JSON = String
  
  func transformFromJSON(_ value: Any?) -> String? {
    guard let string = value as? String else { return nil }
    
    return string.yotubeDuration()
 
  }
  
  func transformToJSON(_ value: String?) -> String? {
    guard let data = value else{
      return nil
    }
    return "\(data)"
  }
}
