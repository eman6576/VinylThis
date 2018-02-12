//
//  Coordinator.swift
//  VinylThis
//
//  Created by Emanuel  Guerrero on 2/12/18.
//  Copyright © 2018 SwiftyGuerrero. All rights reserved.
//

import Foundation

// MARK: - Coordinator Protocol

/// A protocol that defines application routing
protocol Coordinator: class {
    
    /// Starts the specific flow in the application.
    func start()
}


// MARK: - Public Class Methods
extension Coordinator {
    
    /// The identifier of a coordinator.
    static var identifier: String {
        return String(describing: self)
    }
}
