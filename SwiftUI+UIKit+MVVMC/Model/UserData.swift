//
//  UserData.swift
//  MVVM+Coordinator
//
//  Created by Victor on 27.02.2023.
//

import Foundation

struct UserData {
    var name: String
    var age: String
}

extension UserData {
    static var userData = UserData(name: "Jon", age: "22")
}
