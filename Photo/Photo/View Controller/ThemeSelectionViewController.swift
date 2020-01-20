//
//  ThemeSelectionViewController.swift
//  Photo
//
//  Created by FGT MAC on 1/19/20.
//  Copyright © 2020 FGT MAC. All rights reserved.
//

import UIKit

class ThemeSelectionViewController: UIViewController {
    
    
    var themeHelper: ThemeHelper?
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func selectBlueTheme(_ sender: UIButton) {
        themeHelper?.setThemePreferenceToBlue()
        dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func selectDarkTheme(_ sender: UIButton) {
        themeHelper?.setThemePreferenceToDark()
        dismiss(animated: true, completion: nil)
    }

}
