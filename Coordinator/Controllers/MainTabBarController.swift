//
//  MainTabBarController.swift
//  Coordinator
//
//  Created by Erkam Kucet on 14.02.2019.
//  Copyright © 2019 Erkam Kucet. All rights reserved.
//

import UIKit

final class MainTabBarController: UITabBarController{
    
    let mainCoordinator = MainCoordinator(navigationController: UINavigationController())
    let createAccount = CreateAccountCoordinator(navigationController: UINavigationController())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainCoordinator.start()
        createAccount.start()
        
        viewControllers = [createAccount.navigationController, mainCoordinator.navigationController]
    }
}
