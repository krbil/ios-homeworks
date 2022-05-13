//
//  InfoViewController.swift
//  Navigation
//
//  Created by Илья Крылов on 13.05.2022.
//

import UIKit

class InfoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .cyan
        makeButton()

    }
    private func makeButton() {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 40))
        button.center = view.center
        button.setTitle("Choose", for: .normal)
        button.backgroundColor = .black
        button.addTarget(self, action: #selector(action), for: .touchUpInside)
        view.addSubview(button)
    }
    
    @objc private func action() {
        let alert = UIAlertController(title: "Message", message: "well done", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default) { _ in
            print("Super!")
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: .default) { _ in
            print("Done!")
        }
        alert.addAction(okAction)
        alert.addAction(cancelAction)
        
        present(alert, animated: true)
    }


}
