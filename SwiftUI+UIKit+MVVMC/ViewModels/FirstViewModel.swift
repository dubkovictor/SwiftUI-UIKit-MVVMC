//
//  FirstViewModel.swift
//  MVVM+Coordinator
//
//  Created by Victor on 27.02.2023.
//

import Foundation
import SwiftUI

class FirstViewModel: ObservableObject {
    
    weak var coordinator: AppCoordinator?
    
    @Published var statusText = ""
    @Published var statusColor = Color.red
    var isLoggedIn = false
    
    func userButtonPressed(login: String, password: String) {
        if login != User.logins[0].login || password != User.logins[0].passwords {
            statusText = "Log in failed."
            statusColor = .red
            isLoggedIn = false
        } else {
            statusText = "You successfully logged in."
            statusColor = .green
            isLoggedIn = true
            coordinator?.openSecondVC(user: User(login: login, passwords: password))
        }
    }
}
