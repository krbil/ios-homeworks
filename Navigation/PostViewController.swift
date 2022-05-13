//
//  PostViewController.swift
//  Navigation
//
//  Created by Илья Крылов on 13.05.2022.
//

import UIKit

class PostViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        makeBarItem()
    }
    
    private func makeBarItem() {
        let barItem = UIBarButtonItem(title: "More info", style: .plain, target: self, action: #selector(tapAction))
        navigationItem.rightBarButtonItem = barItem
    }
    
    @objc private func tapAction() {
        let infoViewController = InfoViewController()
        infoViewController.title = "Info"
        navigationController?.pushViewController(infoViewController, animated: true)
    }

}
