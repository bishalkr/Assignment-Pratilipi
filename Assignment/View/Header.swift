//
//  Header.swift
//  Assignment
//
//  Created by Bishal kumar  on 06/01/23.
//

import UIKit

class Header: UICollectionReusableView {
    let label = UILabel()
    override init(frame: CGRect) {
        super.init(frame: frame)
        label.text = "Recommended for you"
        addSubview(label)
        
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        label.font = label.font.withSize(24)
        label.frame = bounds
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
