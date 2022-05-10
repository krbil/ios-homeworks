//
//  MainTabBarViewController.swift
//  Navigation
//
//  Created by Илья Крылов on 12.05.2022.
//

import UIKit

class MainTabBarViewController: UITabBarController {
    let feddViewController = FeedViewController()
    let profileViewController = ProfileViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupControllers()

       
    }
    private func setupControllers() {
        let navigationControllerFeed = UINavigationController(rootViewController: feddViewController)
        feddViewController.tabBarItem.title = "Feed"
        feddViewController.tabBarItem.image = UIImage(systemName: "bonjour")
        feddViewController.navigationItem.title = "Your Feed"
        let navigationControllerProfile = UINavigationController(rootViewController: profileViewController)
        profileViewController.tabBarItem.title = "Profile"
        profileViewController.tabBarItem.image = UIImage(systemName: "command.circle.fill")
        profileViewController.navigationItem.title = "Your profile"
        viewControllers = [navigationControllerFeed, navigationControllerProfile]
    }
}
