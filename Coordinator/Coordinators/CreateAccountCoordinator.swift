//
//  CreateAccountCoordinator.swift
//  Coordinator
//
//  Created by Erkam Kucet on 14.02.2019.
//  Copyright © 2019 Erkam Kucet. All rights reserved.
//

import UIKit

final class CreateAccountCoordinator: Coordinator{
    
    var childCoordinators: [Coordinator] = [Coordinator]()
    var navigationController: UINavigationController
    var parentCoordinator: MainCoordinator?
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = CreateAccountViewController.instantiate()
        vc.tabBarItem = UITabBarItem(tabBarSystemItem: .downloads, tag: 1)
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
}
