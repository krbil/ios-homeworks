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
        view.backgroundColor = .lightGray

    }
    override func viewWillLayoutSubviews() {
        makeProfileHeaderVC()
    }
    private func makeProfileHeaderVC() {
        let profileHeaderVC = ProfileHeaderView()
        profileHeaderVC.frame = view.safeAreaLayoutGuide.layoutFrame
        profileHeaderVC.backgroundColor = .lightGray
        view.addSubview(profileHeaderVC)
    }
}
