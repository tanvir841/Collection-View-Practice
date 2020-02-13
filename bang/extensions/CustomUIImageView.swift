//
//  CustomUIImageView.swift
//  iOS-Bongobondu
//
//  Created by Mac on 2/10/20.
//  Copyright © 2020 Mac. All rights reserved.
//

import UIKit

class CustomUIImageView: UIImageView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setRadius()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setRadius()
    }
    
    func setRadius() {
        layer.cornerRadius = 10
        clipsToBounds = true
    }
}
