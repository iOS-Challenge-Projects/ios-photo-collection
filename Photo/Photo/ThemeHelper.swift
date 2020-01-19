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
    let themePreferenceKey: String
    
    init(themePreferenceKey: String) {
        self.themePreferenceKey = themePreferenceKey
    }
}
