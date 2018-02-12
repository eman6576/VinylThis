//
//  AppCoordinator.swift
//  VinylThis
//
//  Created by Emanuel  Guerrero on 2/12/18.
//  Copyright © 2018 SwiftyGuerrero. All rights reserved.
//

import UIKit

// MARK: - AppCoordinator

/// A subclass of `Coordinator`. This is the main cooridnator of the application. It also maintains child
/// coordinators used during the lifecycle of the application.
final class AppCoordinator: Coordinator {
    
    // MARK: - Private Instance Attributes
    
    /// The main window of the application.
    private var window: UIWindow
    
    /// The active child coordinators used in the application.
    private var childCoordinators: [String: Coordinator] = [:]
    
    
    // MARK: - Initializers
    
    /// Initializes an instance of `AppCoordinator`.
    ///
    /// - Parameter window: A `UIWindow` representing the main window of the application.
    init(window: UIWindow) {
        self.window = window
    }
    
    
    // MARK: - Coordinator Methods
    func start() {
    }
}
