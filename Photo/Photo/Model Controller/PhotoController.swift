//
//  PhotoController.swift
//  Photo
//
//  Created by FGT MAC on 1/19/20.
//  Copyright © 2020 FGT MAC. All rights reserved.
//

import Foundation

class PhotoController {
    var photos: [Photo] = []
    
    
    func Create(photo: Data, title: String) {
        
        let newPhoto = Photo(imageData: photo, title: title)
        
        photos.append(newPhoto)
    }
    
    
    func Update(photo: Photo, data: Data, name: String) {
        
        guard let index = photos.firstIndex(of: photo) else {return}
        
        print(index)
        
        photos[index] = Photo(imageData: data, title: name)
        
        
    }
}
