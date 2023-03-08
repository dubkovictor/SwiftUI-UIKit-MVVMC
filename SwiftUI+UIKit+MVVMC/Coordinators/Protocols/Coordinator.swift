//
//  Coordinator.swift
//  SwiftUI+UIKit+MVVMC
//
//  Created by Victor on 06.03.2023.
//

import UIKit

protocol Coordinator {
    
    var navigationController : UINavigationController { get set }
    
    func start()
}
