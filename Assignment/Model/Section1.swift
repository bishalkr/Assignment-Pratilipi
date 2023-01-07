//
//  section1.swift
//  Assignment
//
//  Created by Bishal kumar  on 07/01/23.
//

import UIKit

struct Section1
{
    let title : String
    let thumbinal : UIImage?
    let genre : String
    
    
    init(title : String , thumbinal:UIImage? = nil, genre: String)
    {
        self.title = title
        self.thumbinal = thumbinal
        self.genre = genre
    }
}
