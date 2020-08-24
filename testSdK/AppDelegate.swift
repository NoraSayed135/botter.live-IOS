//
//  AppDelegate.swift
//  testSdK
//
//  Created by Amr Ahmed on 8/9/20.
//  Copyright © 2020 Amr Ahmed. All rights reserved.
//

import UIKit
import Botter

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for custoamization after application launch.
        
        

        Botter.show(APIKey: "your API key")
               BotterSettingsManager.AccentColor = UIColor.init(codeString: "#72962C")
               BotterSettingsManager.FontColor = UIColor.white
               BotterSettingsManager.BotterMessageFontColor = UIColor.black
               BotterSettingsManager.BotterMessageBGColor  = UIColor.init(codeString: "")
               BotterSettingsManager.ChatTitleColor = UIColor.white
               BotterSettingsManager.ChatTitleText  = "Botter"
               BotterSettingsManager.HeadlineMessage  = "Chat with BOTTER"
               BotterSettingsManager.WelcomeMessage  = "We’re here to answer your questions.\nAsk us anything!"
               BotterSettingsManager.alignLauncherLeft = false
               BotterSettingsManager.bottomMargin  = 40
               BotterSettingsManager.Font.regularFontName = "Roboto-Regular"
               BotterSettingsManager.Font.mediumFontName = "Roboto-Medium"
               BotterSettingsManager.Font.boldFontName = "Roboto-Bold"
               BotterSettingsManager.hasFAQs = false
               BotterSettingsManager.language  = .english
        return true
    }


}

