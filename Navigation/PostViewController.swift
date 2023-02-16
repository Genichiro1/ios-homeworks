//
//  PostViewController.swift
//  Navigation
//
//  Created by Anna Kuptsova on 16.02.2023.
//

import UIKit

class PostViewController: UIViewController {
    
    let post: Post
    
    init(post: Post) {
        self.post = post
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.title = post.title
        
        self.view.backgroundColor = .gray
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(openInfo))
    }
    
    @objc func openInfo() {
        self.present(InfoViewController(), animated: true)
    }
}
