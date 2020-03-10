//
//  CameraHeaderCell.swift
//  Luce
//
//  Created by Diego Bustamante on 3/10/20.
//  Copyright © 2020 TheModernProgrammer. All rights reserved.
//

import UIKit

class CameraHeaderCell: UIView {
    let label : UILabel = {
        let label = UILabel()
        let attributedText = NSMutableAttributedString(string: "Select your Camera", attributes: [NSAttributedString.Key.foregroundColor : UIColor.systemGray2, NSAttributedString.Key.font : UIFont.systemFont(ofSize: 12, weight: .regular)])
        label.attributedText = attributedText
        label.textAlignment = .left
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(label)
        label.anchor(top: topAnchor, bottom: nil, leading: leadingAnchor, trailing: trailingAnchor, paddingTop: 0, paddingBottom: 0, paddingLeft: 20, paddingRight: 0, width: 0, height: 0)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
