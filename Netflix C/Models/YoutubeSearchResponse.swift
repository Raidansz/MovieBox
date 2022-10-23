//
//  YoutubeSearchResponse.swift
//  Netflix C
//
//  Created by Raidan Shugaa Addin on 2022. 10. 23..
//

import Foundation


struct YoutubeSearchResponse:Codable {
    
    let items:[VideoElement]
}


struct VideoElement: Codable{
    
    let id : IdVideoElement
}


struct IdVideoElement:Codable{
    
    let kind:String
    let videoId: String
    
    
}
