//
//  CustomUIVIew.swift
//  iOS-Bongobondu
//
//  Created by Mac on 2/10/20.
//  Copyright © 2020 Mac. All rights reserved.
//

import UIKit

class CustomUIView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setRadiusAndShawdow()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setRadiusAndShawdow()
    }
    
    func setRadiusAndShawdow() {
        layer.cornerRadius = 10
        clipsToBounds = true
        layer.masksToBounds = false
        layer.shadowRadius = 5
        layer.shadowOpacity = 0.5
        layer.shadowOffset = CGSize(width: 5, height: 5)
        layer.shadowColor = UIColor.black.cgColor
    }
}
