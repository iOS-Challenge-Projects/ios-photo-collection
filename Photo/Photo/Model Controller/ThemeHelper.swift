//
//  ThemeHelper.swift
//  Photo
//
//  Created by FGT MAC on 1/19/20.
//  Copyright © 2020 FGT MAC. All rights reserved.
//

import Foundation

//This will be used whenever you need to save the user's theme preference or get it from UserDefaults.
class ThemeHelper {
    let themePreferenceKey: String = "themePreferenceKey"
    
    //Read the value from UserDefaults
    var themePreference: String? {
        let userDefaults = UserDefaults.standard
        
        let prefValue = userDefaults.string(forKey: themePreferenceKey)
        
        return prefValue
    }
    
    //Write preference for dark
    func setThemePreferenceToDark() {
        
        let userDefaults = UserDefaults.standard
        
        userDefaults.set("Dark", forKey: themePreferenceKey)
    }
    
    
    //Write preference for color
    func setThemePreferenceToBlue() {
        
        let userDefaults = UserDefaults.standard
        
        userDefaults.set("Blue", forKey: themePreferenceKey)
    }
    

}
