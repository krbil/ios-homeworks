//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by Илья Крылов on 15.05.2022.
//

import UIKit

class ProfileHeaderView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        [imageView, text, textStatus, textFieldStatus, button] .forEach {addSubview($0)}
        
        NSLayoutConstraint.activate([
            imageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            imageView.topAnchor.constraint(equalTo: topAnchor, constant: 16),
            imageView.widthAnchor.constraint(equalToConstant: 100),
            imageView.heightAnchor.constraint(equalToConstant: 100),

            text.leadingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: 16),
            text.topAnchor.constraint(equalTo: imageView.topAnchor),
            text.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            text.heightAnchor.constraint(equalToConstant: 30),

            textStatus.leadingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: 16),
            textStatus.bottomAnchor.constraint(equalTo: imageView.bottomAnchor, constant: -32),
            textStatus.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            textStatus.heightAnchor.constraint(equalToConstant: 30),

            textFieldStatus.leadingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: 16),
            textFieldStatus.topAnchor.constraint(equalTo: textStatus.bottomAnchor, constant: 16),
            textFieldStatus.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            textFieldStatus.heightAnchor.constraint(equalToConstant: 40),
            
            button.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            button.topAnchor.constraint(equalTo: textFieldStatus.bottomAnchor, constant: 16),
            button.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            button.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.borderWidth = 3
        imageView.layer.borderColor = UIColor.white.cgColor
        imageView.image = UIImage(named: "00034")
        imageView.contentMode = .scaleAspectFill
        imageView.layer.cornerRadius = 50
        imageView.clipsToBounds = true
        return imageView
    } ()
    
    private lazy var text: UITextView = {
        let text = UITextView()
        text.translatesAutoresizingMaskIntoConstraints = false
        text.text = "Your name"
        text.textColor = .black
        text.backgroundColor = .lightGray
        text.font = UIFont.boldSystemFont(ofSize: 18)
        return text
    } ()
    
    private lazy var textStatus: UITextView = {
        let textStatus = UITextView()
        textStatus.translatesAutoresizingMaskIntoConstraints = false
        textStatus.text = "Waiting for something..."
        textStatus.textColor = .gray
        textStatus.backgroundColor = .lightGray
        textStatus.font = UIFont.systemFont(ofSize: 14)
        return textStatus
    } ()
    
    private lazy var textFieldStatus: UITextField = {
        let textFieldStatus = UITextField()
        textFieldStatus.translatesAutoresizingMaskIntoConstraints = false
        textFieldStatus.backgroundColor = .white
        textFieldStatus.layer.borderColor = UIColor.black.cgColor
        textFieldStatus.layer.borderWidth = 1
        textFieldStatus.layer.cornerRadius = 12
        textFieldStatus.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        textFieldStatus.textColor = .black
        textFieldStatus.addTarget(self, action: #selector(statusTextChanged), for: .editingChanged)
        textFieldStatus.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: text.frame.height))
        textFieldStatus.leftViewMode = .always
        return textFieldStatus
    } ()
    
    private lazy var button: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .blue
        button.setTitle("Show status", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.layer.cornerRadius = 4
        button.layer.shadowOffset.width = 4
        button.layer.shadowOffset.height = 4
        button.layer.shadowRadius = 4
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.7
        button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        return button
    } ()
    
    private lazy var statusText:String = ""
    
    @objc func statusTextChanged(_ textField: UITextField) {
        statusText = textField.text!
    }
    
    @objc private func buttonPressed() {
        textStatus.text = statusText
    }
}
