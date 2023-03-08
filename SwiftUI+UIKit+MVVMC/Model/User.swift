//
//  User.swift
//  MVVM+Coordinator
//
//  Created by Victor on 27.02.2023.
//

import Foundation

struct User {
    let login: String?
    let passwords: String?
}

extension User {
    static var logins = [
        User(login: "Admin", passwords: "111")
    ]
}
