//
//  LoginScreen.swift
//  DiseasesPysiotherapy
//
//  Created by Fernanda Perovano on 02/03/23.
//

import UIKit

class LoginScreen: UIView {

    lazy var subImageview: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "fundoVerde")
        return image
    }()
    
    lazy var logoAppImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "simbolo")
        image.clipsToBounds = true
        image.layer.cornerRadius = 12
        return image
    }()
    
    lazy var loginLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .yellow
        label.font = UIFont.boldSystemFont(ofSize: 40)
        label.text = "FISIOTERAPIA"
        return label
    }()

    lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 14)
        label.text = "PATOLOGIAS ORTOPÉDICAS"
        label.textAlignment = .center
        return label
    }()
    
    lazy var loginTextField: UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.autocorrectionType = .no
        tf.backgroundColor = UIColor(red: 52/255, green: 52/255, blue: 52/255, alpha: 1.0)
        // borda mais fina e arredondada
        tf.borderStyle = .roundedRect
        tf.keyboardType = .emailAddress
        // colore o TextField no placeholder
        tf.attributedPlaceholder = NSAttributedString(string: "Login", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white.withAlphaComponent(0.4)])
        tf.textColor = .white
        tf.clipsToBounds = true
        tf.layer.cornerRadius = 12
        tf.layer.borderWidth = 1.0
        // colore a borda
        tf.layer.borderColor = UIColor.white.cgColor
        return tf
    }()
    
    lazy var passwordTextField: UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.autocorrectionType = .no
        tf.backgroundColor = UIColor(red: 52/255, green: 52/255, blue: 52/255, alpha: 1.0)
        // borda mais fina e arredondada
        tf.borderStyle = .roundedRect
        tf.keyboardType = .default
        // se o campo é de senha
        tf.isSecureTextEntry =  true
        // colore o TextField no placeholder
        tf.attributedPlaceholder = NSAttributedString(string: "Senha", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white.withAlphaComponent(0.4)])
        tf.textColor = .white
        tf.clipsToBounds = true
        tf.layer.cornerRadius = 12
        tf.layer.borderWidth = 1.0
        // colore a borda
        tf.layer.borderColor = UIColor.white.cgColor
        return tf
    }()
    
    lazy var recoverPasswordButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Recuperar Senha", for: .normal)
        button.setTitleColor(UIColor(red: 76/255, green: 217/255, blue: 100/255, alpha: 1.0), for: .normal)
        button.addTarget(self, action: #selector(tappedRecoverPasswordButton), for: .touchUpInside)
        return button
    }()
    
    lazy var subLoginImageview: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "fBotao")
        image.clipsToBounds = true
        image.layer.cornerRadius = 8
        image.contentMode = .scaleToFill
        return image
    }()

    lazy var loginButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Entrar", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.clipsToBounds = true
        button.layer.cornerRadius = 8
        button.titleLabel?.textAlignment = .center
        button.addTarget(self, action: #selector(tappedLoginButton), for: .touchUpInside)
        return button
    }()
    
    lazy var RegisterButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Cadastrar", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.clipsToBounds = true
        button.layer.cornerRadius = 8
        button.titleLabel?.textAlignment = .center
        button.addTarget(self, action: #selector(tappedRegisterButton), for: .touchUpInside)
        return button
    }()
    
    lazy var lineView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints =  false
        view.backgroundColor = .white
        return view
    }()
    
    @objc func tappedRecoverPasswordButton(_ sender: UIButton) {
        print(#function)
    }
    
    @objc func tappedLoginButton(_ sender: UIButton) {
        print(#function)
    }
    
    @objc func tappedRegisterButton(_ sender: UIButton) {
        print(#function)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addElements()
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addElements() {
        self.addSubview(self.subImageview)
        self.addSubview(self.logoAppImageView)
        self.addSubview(self.loginLabel)
        self.addSubview(self.descriptionLabel)
        self.addSubview(self.loginTextField)
        self.addSubview(self.passwordTextField)
        self.addSubview(self.recoverPasswordButton)
        self.addSubview(self.subLoginImageview)
        self.addSubview(self.loginButton)
        self.addSubview(self.RegisterButton)
        self.addSubview(self.lineView)
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
        
            subImageview.topAnchor.constraint(equalTo: topAnchor),
            subImageview.leadingAnchor.constraint(equalTo: leadingAnchor),
            subImageview.trailingAnchor.constraint(equalTo: trailingAnchor),
            subImageview.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            logoAppImageView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 55),
            logoAppImageView.centerXAnchor.constraint(equalTo: centerXAnchor),
            logoAppImageView.heightAnchor.constraint(equalToConstant: 108),
            logoAppImageView.widthAnchor.constraint(equalToConstant: 108),
            
            loginLabel.topAnchor.constraint(equalTo: logoAppImageView.bottomAnchor, constant: 16),
            loginLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            descriptionLabel.topAnchor.constraint(equalTo: loginLabel.bottomAnchor, constant: 4),
            descriptionLabel.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 10),
            descriptionLabel.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -10),
            
            loginTextField.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 32),
            loginTextField.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 20),
            loginTextField.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -20),
            loginTextField.heightAnchor.constraint(equalToConstant: 39),
            
            passwordTextField.topAnchor.constraint(equalTo: loginTextField.bottomAnchor, constant: 11),
            passwordTextField.leadingAnchor.constraint(equalTo: loginTextField.leadingAnchor),
            passwordTextField.trailingAnchor.constraint(equalTo: loginTextField.trailingAnchor),
            passwordTextField.heightAnchor.constraint(equalTo: loginTextField.heightAnchor),
            
            recoverPasswordButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 9),
            recoverPasswordButton.trailingAnchor.constraint(equalTo: loginTextField.trailingAnchor),
            recoverPasswordButton.heightAnchor.constraint(equalToConstant: 16),
             
            subLoginImageview.topAnchor.constraint(equalTo: recoverPasswordButton.bottomAnchor, constant: 36),
            subLoginImageview.leadingAnchor.constraint(equalTo: loginTextField.leadingAnchor),
            subLoginImageview.trailingAnchor.constraint(equalTo: loginTextField.trailingAnchor),
            subLoginImageview.heightAnchor.constraint(equalToConstant: 35),
            
            loginButton.topAnchor.constraint(equalTo: subLoginImageview.topAnchor),
            loginButton.leadingAnchor.constraint(equalTo: subLoginImageview.leadingAnchor),
            loginButton.trailingAnchor.constraint(equalTo: subLoginImageview.trailingAnchor),
            loginButton.bottomAnchor.constraint(equalTo: subLoginImageview.bottomAnchor),
            
            RegisterButton.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 11),
            RegisterButton.leadingAnchor.constraint(equalTo: loginTextField.leadingAnchor),
            RegisterButton.trailingAnchor.constraint(equalTo: loginTextField.trailingAnchor),
            RegisterButton.heightAnchor.constraint(equalTo: loginButton.heightAnchor),
            
            lineView.topAnchor.constraint(equalTo: RegisterButton.bottomAnchor, constant: 48),
            lineView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 64),
            lineView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -64),
            lineView.heightAnchor.constraint(equalToConstant: 0.5)

        ])
    }

}
