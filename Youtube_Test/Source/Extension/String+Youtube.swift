//
//  String+Youtube.swift
//  Youtube_Test
//
//  Created by MeiXiang Wu on 7/11/22.
//


extension String {
  
  func yotubeDuration() -> String {
    
    let formattedDuration = self.replacingOccurrences(of: "PT", with: "").replacingOccurrences(of: "H", with:":").replacingOccurrences(of: "M", with: ":").replacingOccurrences(of: "S", with: "")
    
    let components = formattedDuration.components(separatedBy: ":")
    var duration = ""
    for component in components {
      duration = duration.count > 0 ? duration + ":" : duration
      if component.count < 2 {
        duration += "0" + component
        continue
      }
      duration += component
    }
    
    if duration.count == 2 {
      duration = "0:" + duration
    }
    
    return duration
  }
}
