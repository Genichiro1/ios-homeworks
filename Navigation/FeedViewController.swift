//
//  FeedViewController.swift
//  Navigation
//
//  Created by Anna Kuptsova on 16.02.2023.
//

import UIKit

class FeedViewController: UIViewController {
    
    let button = UIButton()
    
    func openPostButton() {
        self.view.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Open post", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.addAction(UIAction(handler: { _ in
            self.navigationController?.pushViewController(PostViewController(post: Post(title: "New Post")), animated: true)
        }), for: .touchUpInside)
        button.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        openPostButton()
        self.view.backgroundColor = .white
    }
}
