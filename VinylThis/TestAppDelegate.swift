//
//  TestAppDelegate.swift
//  VinylThis
//
//  Created by Emanuel  Guerrero on 2/11/18.
//  Copyright © 2018 SwiftyGuerrero. All rights reserved.
//

import UIKit

final class TestAppDelegate: UIResponder {
    
    // MARK: - Public Instance Methods
    var window: UIWindow?
}


// MARK: - UIApplicationDelegate
extension TestAppDelegate: UIApplicationDelegate {
    func application(_ application: UIApplication,
                     willFinishLaunchingWithOptions
        launchOptions: [UIApplicationLaunchOptionsKey: Any]? = nil) -> Bool {
        return true
    }
}
