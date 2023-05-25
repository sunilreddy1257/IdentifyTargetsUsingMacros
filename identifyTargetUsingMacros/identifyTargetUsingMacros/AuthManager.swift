//
//  AuthManager.swift
//  identifyTargetUsingMacros
//
//  Created by Sunil Kumar Reddy Sanepalli on 25/05/23.
//

import Foundation

class AuthManager {
    static var shared = AuthManager()
    private init() {}
    var target: TargetTypes = .PROD
}
