//
//  ProcessInfo+Extension.swift
//  VinylThis
//
//  Created by Emanuel  Guerrero on 2/11/18.
//  Copyright © 2018 SwiftyGuerrero. All rights reserved.
//

import Foundation

extension ProcessInfo {
    
    /// Determines if the application is running unit tests.
    static var isRunningUnitTests: Bool {
        let environmentDictionary = processInfo.environment
        return environmentDictionary["RUNNING_UNIT_TESTS"] == "TRUE"
    }
    
    /// Determines if the application is running integration tests.
    static var isRunningIntegrationTests: Bool {
        let environmentDictionary = processInfo.environment
        return environmentDictionary["RUNNING_INTEGRATION_TESTS"] == "TRUE"
    }
}
