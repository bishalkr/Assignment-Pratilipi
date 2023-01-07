//
//  Section2.swift
//  Assignment
//
//  Created by Bishal kumar  on 07/01/23.
//

import UIKit

struct Section2

{
    let title : String
    let thumbinal : UIImage?
    let genre : String
    let episode : String
    
    
    init(title: String, thumbinal: UIImage? = nil, genre: String, episode: String) {
        self.title = title
        self.thumbinal = thumbinal
        self.genre = genre
        self.episode = episode
    }
    
    
}

