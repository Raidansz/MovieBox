//
//  Extensions.swift
//  MovieBox
//
//  Created by Raidan Shugaa Addin on 2022. 09. 25..
//

import Foundation

extension String {
    
    func capitalizeFirstLetter() -> String {
        return self.prefix(1).uppercased() + self.lowercased().dropFirst()
    }
    
    
}
