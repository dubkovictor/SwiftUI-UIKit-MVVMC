//
//  ThirdViewController.swift
//  MVVM+Coordinator
//
//  Created by Victor on 27.02.2023.
//

import UIKit

class ThirdViewController: UIViewController {
    
    weak var coordinator: AppCoordinator?
    var viewModel: ThirdViewModel?
    
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var ageLbl: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    func updateUI() {
        nameLbl.text = viewModel?.userData?.name
        ageLbl.text = viewModel?.userData?.age
    }
}
