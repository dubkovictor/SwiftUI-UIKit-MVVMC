//
//  AppCoordinator.swift
//  SwiftUI+UIKit+MVVMC
//
//  Created by Victor on 06.03.2023.
//

import UIKit

class AppCoordinator: Coordinator {
    
    var navigationController : UINavigationController
    
    var isLoggedIn: Bool = false
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        if isLoggedIn {
            openSecondVC(user: User(login: "test", passwords: "123"))
        } else {
            openFirstVC()
        }
    }
    
    func openFirstVC() {
        let viewModel = FirstViewModel()
        viewModel.coordinator = self
        let view = FirstView(viewModel: viewModel)
        let cv = SwiftUIHostController(view: view)
        navigationController.pushViewController(cv, animated: false)
    }
    
    func openSecondVC(user: User) {
        let viewModel = SecondViewModel()
        viewModel.coordinator = self
        viewModel.user = user
        let view = SecondView(viewModel: viewModel)
        let vc = SwiftUIHostController(view: view)
        navigationController.pushViewController(vc, animated: true)
    }
    
    func openThirdVC() {
        let vc = AppStoryboard.thirdViewController.viewController(vc: ThirdViewController.self)
        vc.coordinator = self
        let viewModel = ThirdViewModel()
        vc.viewModel = viewModel
        vc.viewModel?.userData = UserData.userData
        navigationController.pushViewController(vc, animated: true)
    }
}
