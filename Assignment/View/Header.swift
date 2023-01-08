//
//  Header.swift
//  Assignment
//
//  Created by Bishal kumar  on 06/01/23.
//

import UIKit

class Header: UICollectionReusableView {
    let headerLabel = UILabel()
    override init(frame: CGRect) {
        super.init(frame: frame)
       
        addSubview(headerLabel)

    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        headerLabel.text = "Recommended for you"
        headerLabel.font = UIFont.boldSystemFont(ofSize: 24)
        headerLabel.textColor = .white
        headerLabel.frame = bounds
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
