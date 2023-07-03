//
//  ResultScreen.swift
//  AlcoolOuGasolina
//
//  Created by João Pedro on 03/07/23.
//

import UIKit

class ResultScreen: UIView {
    
    lazy var backGroundImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "BG BLUR")
        image.contentMode = .scaleAspectFit
        return image
    }()
    

    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(backGroundImageView)
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func configConstraints() {
        NSLayoutConstraint.activate([
            backGroundImageView.topAnchor.constraint(equalTo: topAnchor),
            backGroundImageView.trailingAnchor.constraint(equalTo: trailingAnchor),
            backGroundImageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            backGroundImageView.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
    }
}
