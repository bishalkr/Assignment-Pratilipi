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
    let label1 = UILabel()
    let label2 = UILabel()
    
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        contentView.backgroundColor = .red
        contentView.addSubview(label1)
        contentView.addSubview(label2)
        contentView.addSubview(imageView)
        contentView.clipsToBounds = true
        
    }

    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func layoutSubviews() {

        label1.font = UIFont.boldSystemFont(ofSize: 16)
        label1.adjustsFontSizeToFitWidth = true
        label2.adjustsFontSizeToFitWidth = true
        label2.font = label2.font.withSize(12)
        imageView.frame = CGRect(x: 5, y: 0, width: contentView.frame.size.width - 5, height: contentView.frame.size.height - 50)
        label1.frame = CGRect(x: 5, y: contentView.frame.size.height - 50, width: contentView.frame.size.width - 5, height: 20)
        label2.frame = CGRect(x: 5, y: contentView.frame.size.height-20, width: contentView.frame.size.width - 5, height: 20)
        
    }
    

}
