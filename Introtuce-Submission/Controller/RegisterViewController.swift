//
//  RegisterViewController.swift
//  Introtuce-Submission
//
//  Created by Darshil Agrawal on 09/05/21.
//

import UIKit


class RegisterViewController: UIViewController {
    
    private let scrollView: UIScrollView = {
           let scrollView = UIScrollView()
           scrollView.clipsToBounds = true
        
           return scrollView
       }()

       private let imageView: UIImageView = {
           let imageView = UIImageView()
           imageView.image = UIImage(systemName: "person.circle")
           imageView.tintColor = .gray
           imageView.contentMode = .scaleAspectFit
           imageView.layer.masksToBounds = true
           imageView.layer.borderWidth = 2
           imageView.layer.borderColor = UIColor.lightGray.cgColor
           return imageView
       }()

       private let firstNameField: UITextField = {
           let field = UITextField()
           field.autocapitalizationType = .none
           field.autocorrectionType = .no
           field.returnKeyType = .continue
           field.layer.cornerRadius = 12
           field.layer.borderWidth = 1
           field.layer.borderColor = UIColor.lightGray.cgColor
           field.placeholder = "First Name..."
           field.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 5, height: 0))
           field.leftViewMode = .always
           field.backgroundColor = .secondarySystemBackground
           return field
       }()

       private let lastNameField: UITextField = {
           let field = UITextField()
           field.autocapitalizationType = .none
           field.autocorrectionType = .no
           field.returnKeyType = .continue
           field.layer.cornerRadius = 12
           field.layer.borderWidth = 1
           field.layer.borderColor = UIColor.lightGray.cgColor
           field.placeholder = "Last Name..."
           field.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 5, height: 0))
           field.leftViewMode = .always
           field.backgroundColor = .secondarySystemBackground
           return field
       }()
        
    
    private let dateOfBirth: UITextField = {
        let field = UITextField()
        field.autocapitalizationType = .none
        field.autocorrectionType = .no
        field.returnKeyType = .continue
        field.layer.cornerRadius = 12
        field.layer.borderWidth = 1
        field.layer.borderColor = UIColor.lightGray.cgColor
        field.placeholder = "Date of Birth"
        field.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 5, height: 0))
        field.leftViewMode = .always
        field.backgroundColor = .secondarySystemBackground
        return field
    }()
       private let Gender: UITextField = {
           let field = UITextField()
           field.autocapitalizationType = .none
           field.autocorrectionType = .no
           field.returnKeyType = .continue
           field.layer.cornerRadius = 12
           field.layer.borderWidth = 1
           field.layer.borderColor = UIColor.lightGray.cgColor
           field.placeholder = "Gender"
           field.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 5, height: 0))
           field.leftViewMode = .always
           field.backgroundColor = .secondarySystemBackground
           return field
       }()
        
    
    private let Country: UITextField = {
        let field = UITextField()
        field.autocapitalizationType = .none
        field.autocorrectionType = .no
        field.returnKeyType = .continue
        field.layer.cornerRadius = 12
        field.layer.borderWidth = 1
        field.layer.borderColor = UIColor.lightGray.cgColor
        field.placeholder = "Country"
        field.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 5, height: 0))
        field.leftViewMode = .always
        field.backgroundColor = .secondarySystemBackground
        return field
    }()
       
    private let State: UITextField = {
        let field = UITextField()
        field.autocapitalizationType = .none
        field.autocorrectionType = .no
        field.returnKeyType = .continue
        field.layer.cornerRadius = 12
        field.layer.borderWidth = 1
        field.layer.borderColor = UIColor.lightGray.cgColor
        field.placeholder = "State"
        field.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 5, height: 0))
        field.leftViewMode = .always
        field.backgroundColor = .secondarySystemBackground
        return field
    }()

    private let HomeTown: UITextField = {
        let field = UITextField()
        field.autocapitalizationType = .none
        field.autocorrectionType = .no
        field.returnKeyType = .continue
        field.layer.cornerRadius = 12
        field.layer.borderWidth = 1
        field.layer.borderColor = UIColor.lightGray.cgColor
        field.placeholder = "Home Town"
        field.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 5, height: 0))
        field.leftViewMode = .always
        field.backgroundColor = .secondarySystemBackground
        return field
    }()
    
    private let PhoneNumber: UITextField = {
        let field = UITextField()
        field.autocapitalizationType = .none
        field.autocorrectionType = .no
        field.returnKeyType = .continue
        field.layer.cornerRadius = 12
        field.layer.borderWidth = 1
        field.layer.borderColor = UIColor.lightGray.cgColor
        field.placeholder = "Phone Number"
        field.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 5, height: 0))
        field.leftViewMode = .always
        field.backgroundColor = .secondarySystemBackground
        return field
    }()
    
    private let telephoneNumber: UITextField = {
        let field = UITextField()
        field.autocapitalizationType = .none
        field.autocorrectionType = .no
        field.returnKeyType = .continue
        field.layer.cornerRadius = 12
        field.layer.borderWidth = 1
        field.layer.borderColor = UIColor.lightGray.cgColor
        field.placeholder = "Telephone Number"
        field.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 5, height: 0))
        field.leftViewMode = .always
        field.backgroundColor = .secondarySystemBackground
        return field
    }()
       private let registerButton: UIButton = {
           let button = UIButton()
           button.setTitle("Register", for: .normal)
           button.backgroundColor = .systemGreen
           button.setTitleColor(.white, for: .normal)
           button.layer.cornerRadius = 12
           button.layer.masksToBounds = true
           button.titleLabel?.font = .systemFont(ofSize: 20, weight: .bold)
           return button
       }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Demo Application"
                view.addSubview(scrollView)
                scrollView.addSubview(imageView)
                scrollView.addSubview(firstNameField)
                scrollView.addSubview(lastNameField)
                scrollView.addSubview(dateOfBirth)
                scrollView.addSubview(Gender)
                scrollView.addSubview(Country)
                scrollView.addSubview(State)
                scrollView.addSubview(HomeTown)
                scrollView.addSubview(PhoneNumber)
                scrollView.addSubview(telephoneNumber)
                scrollView.addSubview(registerButton)
        // Do any additional setup after loading the view.
    }
    func alertUserRegisterError(){
        let alert = UIAlertController(title: "Try Again", message: "Please Enter All Information Correctly to Register" , preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Dismiss", style: .cancel, handler: nil))
        present(alert,animated: true)
    }
    
    override func viewDidLayoutSubviews() {
            super.viewDidLayoutSubviews()
            scrollView.frame = view.bounds
            self.scrollView.contentSize = CGSize(width:scrollView.width, height: 800)
            let size = scrollView.width/3
            imageView.frame = CGRect(x: (scrollView.width-size)/2,
                                     y: 35,
                                     width: size,
                                     height: size)

            imageView.layer.cornerRadius = imageView.width/2.0

            firstNameField.frame = CGRect(x: 30,
                                      y: imageView.bottom+10,
                                      width: scrollView.width-60,
                                      height: 52)
            lastNameField.frame = CGRect(x: 30,
                                      y: firstNameField.bottom+10,
                                      width: scrollView.width-60,
                                      height: 52)
            dateOfBirth.frame = CGRect(x: 30,
                                      y: lastNameField.bottom+10,
                                      width: scrollView.width-60,
                                      height: 52)
            Gender.frame = CGRect(x: 30,
                                         y: dateOfBirth.bottom+10,
                                         width: scrollView.width-60,
                                         height: 52)
            Country.frame = CGRect(x: 30,
                                       y: Gender.bottom+10,
                                       width: scrollView.width-60,
                                       height: 52)
        
            State.frame = CGRect(x: 30,
                                   y: Country.bottom+10,
                                   width: scrollView.width-60,
                                   height: 52)
            HomeTown.frame = CGRect(x: 30,
                                   y: State.bottom+10,
                                   width: scrollView.width-60,
                                   height: 52)
        
            PhoneNumber.frame = CGRect(x: 30,
                                   y: HomeTown.bottom+10,
                                   width: scrollView.width-60,
                                   height: 52)
            telephoneNumber.frame = CGRect(x: 30,
                                   y: PhoneNumber.bottom+10,
                                   width: scrollView.width-60,
                                   height: 52)
            
            registerButton.frame = CGRect(x: 30,
                               y: telephoneNumber.bottom+10,
                               width: scrollView.width-60,
                               height: 52)
        }
}
