//
//  InfoViewController.swift
//  Navigation
//
//  Created by Anna Kuptsova on 16.02.2023.
//

import UIKit

class InfoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white

        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Open Alert", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.addAction(UIAction(handler: { _ in
            self.showAlert()
        }), for: .touchUpInside)
        
        self.view.addSubview(button)
        
        button.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    func showAlert() {
        let alert = UIAlertController(title: "Хотите Чаю?", message: "или Кофе", preferredStyle: .alert)
        
        let coffe = UIAlertAction(title: "Кофе", style: .default) {_ in
            print("Хочу кофе")
        }
        let tea = UIAlertAction(title: "Чаю", style: .destructive) {_ in
            print("Хочу чаю")
        }
        
        alert.addAction(coffe)
        alert.addAction(tea)
        self.present(alert, animated: true)
    }
}
