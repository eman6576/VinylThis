//
//  SwiftyBeaver+Extension.swift
//  VinylThis
//
//  Created by Emanuel  Guerrero on 2/12/18.
//  Copyright © 2018 SwiftyGuerrero. All rights reserved.
//

import Foundation
import SwiftyBeaver

// MARK: - Public Class Methods
extension SwiftyBeaver {
    
    /// Sets up default logging to use in the application.
    static func setup() {
        let loggingFormat = "$DHH:mm:ss$d $C$L$c: $M"
        let consoleDestination = ConsoleDestination()
        consoleDestination.format = loggingFormat
        self.addDestination(consoleDestination)
        let fileDestination = FileDestination()
        fileDestination.format = loggingFormat
        self.addDestination(fileDestination)
        let tmpFileDestination = FileDestination()
        tmpFileDestination.format = loggingFormat
        tmpFileDestination.logFileURL = URL(fileURLWithPath: "/tmp/swiftybeaver.log")
        self.addDestination(tmpFileDestination)
    }
    
    /// Logs a message depending on if only wanting to log the message in the debug configuration.
    ///
    /// - Parameters:
    ///   - message: A `String` representing what to log.
    ///   - level: A `SwiftyBeaver.Level` representing the verbosity level.
    ///   - debugOnly: A `Bool` indicating if the message should only be logged in the debug configuration.
    static func log(message: String, level: Level, debugOnly: Bool = false) {
        #if !DEBUG
            if debugOnly { return }
        #endif
        self.custom(level: level, message: message)
    }
}
