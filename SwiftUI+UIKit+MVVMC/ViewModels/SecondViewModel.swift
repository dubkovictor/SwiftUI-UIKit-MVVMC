//
//  SecondViewModel.swift
//  MVVM+Coordinator
//
//  Created by Victor on 27.02.2023.
//

import Foundation

class SecondViewModel: ObservableObject {
    
    weak var coordinator: AppCoordinator?
    
    var user: User?
    
    func buttonDidPress() {
        coordinator?.openThirdVC()
    }
    
}
