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
        addSubview(imageView)
        addSubview(text)
        addSubview(textStatus)
        addSubview(button)
        addSubview(textFieldStatus)
    }
    required init?(coder: NSCoder) {
        fatalError("init(codrt:) has not been implemented")
    }
    let imageView: UIImageView = {
        let imageView = UIImageView(frame: CGRect(x: 16, y: 16, width: 100, height: 100))
        imageView.layer.borderWidth = 3
        imageView.layer.backgroundColor = UIColor.white.cgColor
        imageView.image = UIImage(named: "00034")
        imageView.contentMode = .scaleAspectFill
        imageView.layer.cornerRadius = imageView.frame.size.width / 2
        imageView.clipsToBounds = true
        return imageView
    } ()
    let text: UITextView = {
        let text = UITextView(frame: CGRect(x: 132, y: 27, width: 300, height: 30))
        text.text = ""
        text.backgroundColor = .lightGray
        text.font = UIFont.systemFont(ofSize: 14)
        return text
    } ()
    let textStatus: UITextView = {
        let textStatus = UITextView(frame: CGRect(x: 132, y: 80, width: 300, height: 30))
        textStatus.text = ""
        textStatus.textColor = .gray
        textStatus.backgroundColor = .lightGray
        textStatus.font = UIFont.systemFont(ofSize: 14)
        return textStatus
    } ()
    let textFieldStatus: UITextField = {
        let textFieldStatus = UITextField(frame: CGRect(x: 132, y: 126, width: UIScreen.main.bounds.width - 148, height: 40))
        textFieldStatus.backgroundColor = .white
        textFieldStatus.layer.borderWidth = 1
        textFieldStatus.layer.cornerRadius = 12
        textFieldStatus.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        textFieldStatus.textColor = .black
        textFieldStatus.addTarget(self, action: #selector(statusTextChanged), for: .editingChanged)
        textFieldStatus.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: textFieldStatus.frame.height))
        textFieldStatus.leftViewMode = .always
        return textFieldStatus
    } ()
    private var statusText:String = ""
        
    @objc func statusTextChanged(_ textField: UITextField) {
            statusText = textField.text!
    }
        
    let button:UIButton = {
        let button = UIButton(frame: CGRect(x: 16, y: 182, width: UIScreen.main.bounds.width - 32, height: 50))
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
        
    @objc private func buttonPressed() {
        textStatus.text = statusText
    }
}
