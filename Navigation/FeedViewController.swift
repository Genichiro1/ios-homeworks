//
//  FeedViewController.swift
//  Navigation
//
//  Created by Anna Kuptsova on 16.02.2023.
//

import UIKit

class FeedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white

        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Open post", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.addAction(UIAction(handler: { _ in
            self.navigationController?.pushViewController(PostViewController(post: Post(title: "New Post")), animated: true)
        }), for: .touchUpInside)
        
        self.view.addSubview(button)
        
        button.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
}
