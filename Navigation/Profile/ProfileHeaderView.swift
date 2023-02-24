//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by Anna Kuptsova on 19.02.2023.
//

import UIKit

class ProfileHeaderView: UIView {
    
    let avatarImageView = UIImageView()
    let userNameLabel = UILabel()
    let statusTitleLabel = UILabel()
    let setStatusButton = UIButton()
    
    func setupAvatarImageView() {
        addSubview(avatarImageView)
        avatarImageView.translatesAutoresizingMaskIntoConstraints = false
        
        avatarImageView.leftAnchor.constraint(equalTo: leftAnchor, constant: 16).isActive = true
        avatarImageView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 16).isActive = true
        avatarImageView.widthAnchor.constraint(equalToConstant: 100).isActive = true
        avatarImageView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        avatarImageView.image = UIImage.init(named: "level-1")
        avatarImageView.layer.cornerRadius = 50
        avatarImageView.layer.borderWidth = 3
        avatarImageView.layer.masksToBounds = true
    }
    
    func setupUserNameLabel() {
        addSubview(userNameLabel)
        userNameLabel.translatesAutoresizingMaskIntoConstraints = false
        userNameLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 27).isActive = true
        userNameLabel.centerXAnchor.constraint(equalTo: centerXAnchor, constant: 0).isActive = true
        userNameLabel.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        userNameLabel.textColor = .black
        userNameLabel.text = "Fell Omen"
    }
    
    func setupSetStatusButton() {
        addSubview(setStatusButton)
        statusTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        setStatusButton.leftAnchor.constraint(equalTo: leftAnchor, constant: 16).isActive = true
        setStatusButton.rightAnchor.constraint(equalTo: rightAnchor, constant: -16).isActive = true
        setStatusButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        setStatusButton.topAnchor.constraint(equalTo: avatarImageView.bottomAnchor, constant: 16).isActive = true
        setStatusButton.layer.cornerRadius = 8
        setStatusButton.setTitleColor(.white, for: .normal)
        setStatusButton.backgroundColor = .blue
        setStatusButton.layer.shadowOffset = CGSize(width: 4, height: 4)
        setStatusButton.layer.shadowRadius = 4
        setStatusButton.layer.shadowColor = UIColor.black.cgColor
        setStatusButton.layer.shadowOpacity = 0.7
        setStatusButton.setTitle("Show status", for: .normal)
        setStatusButton.addTarget(self, action: #selector(self.buttonPressed), for: .touchUpInside)
        
        
    }
    
    func setupStatusTitleLabel() {
        addSubview(statusTitleLabel)
        setStatusButton.translatesAutoresizingMaskIntoConstraints = false
        statusTitleLabel.bottomAnchor.constraint(equalTo: setStatusButton.topAnchor, constant: -34).isActive = true
        statusTitleLabel.centerXAnchor.constraint(equalTo: centerXAnchor, constant: 0).isActive = true
        statusTitleLabel.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        statusTitleLabel.textColor = .gray
        statusTitleLabel.text = "Текст украли"
        
    }
    init() {
        super.init(frame: CGRect())
        self.setupAvatarImageView()
        self.setupUserNameLabel()
        self.setupSetStatusButton()
        self.setupStatusTitleLabel()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    @objc func buttonPressed() {
        if let text = statusTitleLabel.text {
            print(text)
        }
    }
}

