//
//  MyCustomViewCell2.swift
//  Assignment
//
//  Created by Bishal kumar  on 06/01/23.
//

import UIKit

class MyCustomCollectionViewCell2: UICollectionViewCell {
    
    static let identifier = "customCollectionViewCell2 "
    
    let imageView = UIImageView()
    
    let titleLabel = UILabel()
    let genreLabel = UILabel()
    let episodeLabel = UILabel()
   
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        contentView.backgroundColor = UIColor(red: 0.15, green: 0.15, blue: 0.15, alpha: 1)
        contentView.addSubview(titleLabel)
        contentView.addSubview(genreLabel)
        contentView.addSubview(episodeLabel)
        contentView.addSubview(imageView)
        contentView.clipsToBounds = true
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
     override func layoutSubviews() {
        
                titleLabel.font = UIFont.boldSystemFont(ofSize: 16)
                titleLabel.textColor = .white
        
                genreLabel.font = genreLabel.font.withSize(12)
                genreLabel.textColor = .lightGray
       
                episodeLabel.font = episodeLabel.font.withSize(14)
                episodeLabel.textColor = .lightGray
        
                imageView.frame = CGRect(x: 5, y: 5, width: contentView.frame.size.width - 120, height: contentView.frame.size.height-10)
//         imageView.contentMode = .scaleAspectFit
                imageView.layer.cornerRadius = 8
                imageView.clipsToBounds = true
         
                titleLabel.frame = CGRect(x: 95, y:20 , width: contentView.frame.size.width , height: 20)
                genreLabel.frame = CGRect(x: 95, y:40 , width: contentView.frame.size.width , height: 20)
                episodeLabel.frame = CGRect(x: 95, y: 60, width: contentView.frame.size.width, height: 20)
        
    }

    
}
