//
//  PhotoDetailViewController.swift
//  Photo
//
//  Created by FGT MAC on 1/19/20.
//  Copyright © 2020 FGT MAC. All rights reserved.
//

import UIKit

class PhotoDetailViewController: UIViewController {
    
    var photoController: PhotoController?
    var photo: Photo?
    var themeHelper: ThemeHelper?
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var textField: UITextField!
    
    var imagePicker: UIImagePickerController!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setTheme()
        updateViews()
    }
    

    //MARK: - IBActions
    
    @IBAction func addPhoto(_ sender: UIButton) {
        
        let imagePickerVC = UIImagePickerController()
        imagePickerVC.allowsEditing = true
        imagePickerVC.delegate = self
        
        present(imagePickerVC, animated: true, completion: nil)
        
        
    }
    
    @IBAction func saveButtonTap(_ sender: UIBarButtonItem) {
        
        if photo != nil {
            
            guard let newPhoto = imageView.image?.pngData(), let title = textField.text else {return}
            
              photoController?.Update(photo: photo! ,data: newPhoto, name: title)
        } else {
            
            if let newPhoto = imageView.image?.pngData() {
                
                photoController?.Create(photo: newPhoto, title: textField.text ?? "" )
             
                navigationController?.popToRootViewController(animated: true)
            }
        }
    }
    
    func setTheme() {
        guard let currentTheme = themeHelper?.themePreference else { return }
        if currentTheme == "dark"{
            view.backgroundColor = UIColor.gray
        }else if currentTheme == "Blue"{
            view.backgroundColor = UIColor.blue
        }
    }
    
    
    func updateViews() {
        guard let photo = photo else { return }
        imageView.image = UIImage(data: photo.imageData)
        textField.text = photo.title
        title = photo.title
    }

}

extension PhotoDetailViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        guard let image = info[.editedImage] as? UIImage else { return }
        
        imageView.image = image
        
        picker.dismiss(animated: true)
        
    }
}
