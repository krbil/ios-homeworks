//
//  FeedViewController.swift
//  Navigation
//
//  Created by Илья Крылов on 13.05.2022.
//

import UIKit


class FeedViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        makeButton()
        // Do any additional setup after loading the view.
    }
    private func makeButton () {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 40))
        button.center = view.center
        button.setTitle("Show Post", for: .normal)
        button.backgroundColor = .black
        button.addTarget(self, action: #selector(tapAction), for: .touchUpInside)
        view.addSubview(button)
        

    }
    
    @objc private func tapAction() {
        let postViewController = PostViewController()
        postViewController.title = post.title
        navigationController?.pushViewController(postViewController, animated: true)

    }
    struct Post {
        var title: String
    }
    let post: Post = Post(title: "Post")

}
