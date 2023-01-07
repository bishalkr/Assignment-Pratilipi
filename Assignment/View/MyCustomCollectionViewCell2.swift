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
    let label1 = UILabel()
    
    let label2 = UILabel()
    let label3 = UILabel()
   
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        contentView.backgroundColor = .red
        contentView.addSubview(label1)
        contentView.addSubview(label2)
        contentView.addSubview(label3)
        contentView.addSubview(imageView)
        contentView.clipsToBounds = true
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func layoutSubviews() {
        
               label1.font = UIFont.boldSystemFont(ofSize: 16)
              
               label2.font = label2.font.withSize(12)
              
               label3.font = label3.font.withSize(14)
        
             
               imageView.frame = CGRect(x: 0, y: 5, width: contentView.frame.size.width - 120, height: contentView.frame.size.height-10)
        imageView.layer.cornerRadius = 8
        imageView.clipsToBounds = true
        label1.frame = CGRect(x: 90, y:20 , width: contentView.frame.size.width , height: 20)
               label2.frame = CGRect(x: 90, y:40 , width: contentView.frame.size.width , height: 20)
        label3.frame = CGRect(x: 90, y: 60, width: contentView.frame.size.width, height: 20)
        
        
    
        
    }
    
    
   
    
    
    
}
