//
//  PhotosCollectionViewCell.swift
//  Navigation
//
//  Created by MACBOOK on 29.06.2022.
//

import UIKit

class PhotosCollectionViewCell: UICollectionViewCell {
    
    let photo: UIImageView = {
       let photo = UIImageView()
        photo.translatesAutoresizingMaskIntoConstraints = false
        
        return photo
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        contentView.addSubview(photo)
        NSLayoutConstraint.activate([photo.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
                                     photo.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
                                     photo.topAnchor.constraint(equalTo: contentView.topAnchor),
                                     photo.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    
    
}
