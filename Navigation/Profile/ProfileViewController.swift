//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Anna Kuptsova on 16.02.2023.
//

import UIKit

class ProfileViewController: UIViewController {
    
    let headerView = ProfileHeaderView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .lightGray
        
        view.addSubview(headerView)
       
        }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        headerView.frame = view.frame
       
    }
}
