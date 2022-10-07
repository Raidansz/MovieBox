//
//  TitleTableViewCell.swift
//  Netflix C
//
//  Created by Raidan Shugaa Addin on 2022. 10. 07..
//

import UIKit

class TitleTableViewCell: UITableViewCell {

    static let identifier = "TitleTableViewCell"
    
    private let playTitleButton:UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
    }()
    
    
    private let titleLabel:UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let titlesPosterUIImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    override init(style:UITableViewCell.CellStyle, reuseIdentifier : String?){
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(titlesPosterUIImageView)
        contentView.addSubview(titleLabel)
        contentView.addSubview(playTitleButton)
        
        applyConstraints()

    }
    
    
    private func applyConstraints(){
        let titlesPosterUIImageViewConstraints = [
            titlesPosterUIImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            titlesPosterUIImageView.topAnchor.constraint(equalTo: contentView.topAnchor,constant: 15)
            titlesPosterUIImageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor,constant: -15)
            titlesPosterUIImageView.widthAnchor.constraint(equalToConstant:100)
             
        ]
        NSLayoutConstraint.activate(titlesPosterUIImageViewConstraints)
    }
    
    
    
    
    required  init?(coder: NSCoder) {
        fatalError()
    }
}
