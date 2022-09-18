//
//  HeroHeaderUIView.swift
//  Netflix C
//
//  Created by Raidan Shugaa Addin on 2022. 09. 18..
//

import UIKit
//To be working on
class HeroHeaderUIView: UIView {

    private let heroImageview:UIImageView = {
        let imageView = UIImageView()
       
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = UIImage(named: "heroImage")
        return imageView
            
    }()
    
    private func addGradient(){
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [
            UIColor.clear.cgColor,
            UIColor.systemBackground.cgColor
        ]
        gradientLayer.frame = bounds
        layer.addSublayer(gradientLayer)
    }
    
    
    override init(frame:CGRect){
        super.init(frame: frame)
        addSubview(heroImageview)
        addGradient()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        heroImageview.frame = bounds
    }

    required init?(coder: NSCoder) {
        fatalError()
    }
    
}
