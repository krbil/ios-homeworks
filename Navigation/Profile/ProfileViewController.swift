//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Илья Крылов on 15.05.2022.
//

import UIKit

class ProfileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(profileHeaderViewController)
        view.addSubview(newButton)
        
        NSLayoutConstraint.activate([
            profileHeaderViewController.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            profileHeaderViewController.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0),
            profileHeaderViewController.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            profileHeaderViewController.heightAnchor.constraint(equalToConstant: 220)
        ])
        
        NSLayoutConstraint.activate([
            newButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            newButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            newButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 0),
            newButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    override func viewWillLayoutSubviews() {

    }

    private lazy var profileHeaderViewController: ProfileHeaderView = {
        let profileHeaderViewController = ProfileHeaderView()
        profileHeaderViewController.translatesAutoresizingMaskIntoConstraints = false
        profileHeaderViewController.backgroundColor = .lightGray
        view.addSubview(profileHeaderViewController)
        return profileHeaderViewController
    }()
    
    private lazy var newButton:UIButton = {
        let newButton = UIButton()
        newButton.translatesAutoresizingMaskIntoConstraints = false
        newButton.setTitle("New Button", for: .normal)
        newButton.backgroundColor = .blue
        view.addSubview(newButton)
        return newButton
    }()

}
