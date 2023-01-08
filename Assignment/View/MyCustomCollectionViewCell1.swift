//
//  CustomCollectionViewCell.swift
//  Assignment
//
//  Created by Bishal kumar  on 05/01/23.
//

import UIKit

class MyCustomCollectionViewCell1: UICollectionViewCell {
    
    
    static let identifier = "customCollectionViewCell1 "
    
    let imageView = UIImageView()
    let titleLabel = UILabel()
    let genreLabel = UILabel()
    
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        contentView.backgroundColor = UIColor(red: 0.15, green: 0.15, blue: 0.15, alpha: 1)

        contentView.addSubview(titleLabel)
        contentView.addSubview(genreLabel)
        contentView.addSubview(imageView)
        contentView.clipsToBounds = true
        
    }

    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func layoutSubviews() {

        titleLabel.font = UIFont.boldSystemFont(ofSize: 16)
        titleLabel.textColor = .white
        titleLabel.adjustsFontSizeToFitWidth = true
        
        genreLabel.adjustsFontSizeToFitWidth = true
        genreLabel.font = genreLabel.font.withSize(12)
        genreLabel.textColor = .lightGray
        
        imageView.layer.cornerRadius = 8
        imageView.clipsToBounds = true
       
        
        imageView.frame = CGRect(x: 5, y: 0, width: contentView.frame.size.width - 5, height: contentView.frame.size.height - 50)
//        imageView.contentMode = .scaleAspectFit
        
        titleLabel.frame = CGRect(x: 5, y: contentView.frame.size.height - 50, width: contentView.frame.size.width - 5, height: 20)
        genreLabel.frame = CGRect(x: 5, y: contentView.frame.size.height-30, width: contentView.frame.size.width - 5, height: 20)
        
    }
    

}
