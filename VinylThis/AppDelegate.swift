//
//  AppDelegate.swift
//  VinylThis
//
//  Created by Emanuel  Guerrero on 2/11/18.
//  Copyright © 2018 SwiftyGuerrero. All rights reserved.
//

import UIKit

final class AppDelegate: UIResponder {

    // MARK: - Public Instance Attributes
    var window: UIWindow?
}


// MARK: - UIApplicationDelegate
extension AppDelegate: UIApplicationDelegate {
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions
        launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        return true
    }
}
