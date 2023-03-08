//
//  AppStoryboard.swift
//  SwiftUI+UIKit+MVVMC
//
//  Created by Victor on 06.03.2023.
//

import UIKit

enum AppStoryboard : String {
    case firstViewController = "FirstViewController"
    case secondViewController = "SecondViewController"
    case thirdViewController = "ThirdViewController"
    
    var instance : UIStoryboard {
        return UIStoryboard(name: self.rawValue, bundle: Bundle.main)
    }
    
    func viewController<T>(vc : T.Type) -> T where T: UIViewController {
        let identifier = String(describing: T.self)
        return self.instance.instantiateViewController(withIdentifier: identifier) as! T
    }
}
