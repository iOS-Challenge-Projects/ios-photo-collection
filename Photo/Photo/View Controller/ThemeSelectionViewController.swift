//
//  ThemeSelectionViewController.swift
//  Photo
//
//  Created by FGT MAC on 1/19/20.
//  Copyright © 2020 FGT MAC. All rights reserved.
//
protocol ThemeDelegate {
    func setTheme()
}

import UIKit

class ThemeSelectionViewController: UIViewController {
    
    
    var themeHelper: ThemeHelper?
    
    var delegate: ThemeDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func selectBlueTheme(_ sender: UIButton) {
 
        themeHelper?.setThemePreferenceToLight()
        
        delegate?.setTheme()
        
        dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func selectDarkTheme(_ sender: UIButton) {
 
        themeHelper?.setThemePreferenceToDark()
        
        delegate?.setTheme()
        
        dismiss(animated: true, completion: nil)
    }
    
    
    
    
    

}
