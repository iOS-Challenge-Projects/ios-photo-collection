//
//  PhotosCollectionViewCell.swift
//  Photo
//
//  Created by FGT MAC on 1/19/20.
//  Copyright © 2020 FGT MAC. All rights reserved.
//

import UIKit

class PhotosCollectionViewCell: UICollectionViewCell {
    
    var photo: Photo? {
        didSet {
            updateViews()
        }
    }
    
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    
    
    func updateViews() {
        guard let photo = photo else {return}
        imageView.image = UIImage(data: photo.imageData)
        titleLabel.text = photo.title
        
    }
}
