//
//  videosRequests.swift
//  Youtube_Test
//
//  Created by MeiXiang Wu on 7/11/22.
//

enum VideosRequests: RequestProtocol {
  
  case videos(items: [ItemModel])
  
  var path: String {
    switch  self {
    case .videos(_):
      return "/youtube/v3/videos"
    }
  }
  
  var method: HTTPMethod {
    switch  self {
    case .videos(_):
      return .get
    }
  }
  
  var parameters: RequestParams {
    switch  self {
    case .videos(let items):      
      let ids = items.map {$0.videoId ?? "" }.joined(separator: ",")
      return .url(["key": Constants.Youtube.appKey,
                   "part": "contentDetails",
                   "id": ids])
    }
  }
  
  var headers: [String : Any]? {
    switch  self {
    case .videos(_):
      return [:]
    }
  }
}
