//
//  PhotosCollectionViewController.swift
//  Photo
//
//  Created by FGT MAC on 1/19/20.
//  Copyright © 2020 FGT MAC. All rights reserved.
//

import UIKit


class PhotosCollectionViewController: UICollectionViewController {
    
    
    let photoController = PhotoController()
    let themeHelper = ThemeHelper()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
  
       
    }

    override func viewWillAppear(_ animated: Bool) {
         collectionView.reloadData()
       
    }
    // MARK: UICollectionViewDataSource


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        //Set number of cells
        return photoController.photos.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PhotoCell", for: indexPath) as? PhotosCollectionViewCell else {return UICollectionViewCell()}
    
        // Configure the cell
        let photo = photoController.photos[indexPath.item]

        
        cell.imageView.image = UIImage(data: photo.imageData)
        cell.titleLabel.text = photo.title
    
        return cell
    }
    
    
    func setTheme() {
        guard let currentTheme = themeHelper.themePreference else { return }
        
        if currentTheme == "Dark"{
            collectionView.backgroundColor = UIColor.gray
        }else if currentTheme == "Blue"{
            collectionView.backgroundColor = UIColor.blue
        }
    }
 
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        
        if segue.identifier == "DetailsSegue"{
            
            if let photoDetailVC = segue.destination as? PhotoDetailViewController {
      
                let cell = sender as? UICollectionViewCell
                let indexPath = self.collectionView!.indexPath(for: cell!)
               
                photoDetailVC.themeHelper = themeHelper
                photoDetailVC.photoController = photoController
                photoDetailVC.photo = photoController.photos[indexPath!.row]
                
            }
            
            
        }else if segue.identifier == "AddPhoto"{
            if let addPhotoVC = segue.destination as? PhotoDetailViewController{
                addPhotoVC.themeHelper = themeHelper
                addPhotoVC.photoController = photoController
            }
            
        }else if segue.identifier == "SelectThemeSegue"{
            if let selectThemeVC = segue.destination as? ThemeSelectionViewController {
                selectThemeVC.themeHelper = themeHelper
            }
        }
        // Pass the selected object to the new view controller.
    }
    
}
