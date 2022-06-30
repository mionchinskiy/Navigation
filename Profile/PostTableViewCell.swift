//
//  PostTableViewCell.swift
//  Navigation
//
//  Created by MACBOOK on 21.06.2022.
//

import UIKit

class PostTableViewCell: UITableViewCell {
    
    var numberOfLikes = 0
    var numberOfViews = 0
    
    let postView: UIView = {
        let postView = UIView()
        postView.translatesAutoresizingMaskIntoConstraints = false
        
        return postView
    }()

    let postAuthor: UILabel = {
        let postAuthor = UILabel()
        postAuthor.translatesAutoresizingMaskIntoConstraints = false
        postAuthor.font = .systemFont(ofSize: 20, weight: .bold)
        postAuthor.textColor = .black
        postAuthor.numberOfLines = 2
        return postAuthor
    }()
    
    let postImage: UIImageView = {
        let postImage = UIImageView()
        postImage.translatesAutoresizingMaskIntoConstraints = false
        postImage.backgroundColor = .black
        postImage.contentMode = .scaleAspectFit
        return postImage
    }()
    
    let postDescription: UILabel = {
        let postDescription = UILabel()
        postDescription.translatesAutoresizingMaskIntoConstraints = false
        postDescription.font = .systemFont(ofSize: 14, weight: .regular)
        postDescription.textColor = .systemGray
        postDescription.numberOfLines = 0
        return postDescription
    }()
    
    let postLikes: UILabel = {
        let postLikes = UILabel()
        postLikes.translatesAutoresizingMaskIntoConstraints = false
        postLikes.font = .systemFont(ofSize: 16, weight: .regular)
        postLikes.textColor = .black
        postLikes.numberOfLines = 1
        return postLikes
    }()
    
    let postViews: UILabel = {
        let postViews = UILabel()
        postViews.translatesAutoresizingMaskIntoConstraints = false
        postViews.font = .systemFont(ofSize: 16, weight: .regular)
        postViews.textColor = .black
        postViews.numberOfLines = 1
        return postViews
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    


    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)


    }
    

    
    func layout() {
        
        contentView.addSubview(postView)
        
        [postAuthor,
         postImage,
         postDescription,
         postLikes,
         postViews].forEach {postView.addSubview($0)}
        
        NSLayoutConstraint.activate([postView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
                                     postView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
                                     postView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
                                     postView.topAnchor.constraint(equalTo: contentView.topAnchor),
                                     
                                     postAuthor.leadingAnchor.constraint(equalTo: postView.leadingAnchor, constant: 16),
                                     postAuthor.trailingAnchor.constraint(equalTo: postView.trailingAnchor, constant: -16),
                                     postAuthor.topAnchor.constraint(equalTo: postView.topAnchor, constant: 16),
                                    
                                     postImage.widthAnchor.constraint(equalTo: postView.widthAnchor),
                                     postImage.heightAnchor.constraint(equalTo: postView.widthAnchor),
                                     postImage.topAnchor.constraint(equalTo: postAuthor.bottomAnchor, constant: 12),
                                     
                                     postDescription.leadingAnchor.constraint(equalTo: postView.leadingAnchor, constant: 16),
                                     postDescription.topAnchor.constraint(equalTo: postImage.bottomAnchor, constant: 16),
                                     postDescription.trailingAnchor.constraint(equalTo: postView.trailingAnchor, constant: -16),
                                     
                                     postLikes.leadingAnchor.constraint(equalTo: postView.leadingAnchor, constant: 16),
                                     postLikes.topAnchor.constraint(equalTo: postDescription.bottomAnchor, constant: 16),
                                     postLikes.bottomAnchor.constraint(equalTo: postView.bottomAnchor, constant: -16),
                                     
                                     postViews.trailingAnchor.constraint(equalTo: postView.trailingAnchor, constant: -16),
                                     postViews.topAnchor.constraint(equalTo: postDescription.bottomAnchor, constant: 16),
                                     postViews.bottomAnchor.constraint(equalTo: postView.bottomAnchor, constant: -16),
                                     
                                    ])
        
        
        
    }
    
    
    

}
