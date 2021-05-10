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
        scrollView.backgroundColor = .systemIndigo
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
        field.autocapitalizationType = .words
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
        field.autocapitalizationType = .words
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
    
    
    private let dateOfBirthField: UITextField = {
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
    private let GenderField: UITextField = {
        let field = UITextField()
        field.autocapitalizationType = .words
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
    
    
    private let CountryField: UITextField = {
        let field = UITextField()
        field.autocapitalizationType = .words
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
    
    private let StateField: UITextField = {
        let field = UITextField()
        field.autocapitalizationType = .words
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
    
    private let HomeTownField: UITextField = {
        let field = UITextField()
        field.autocapitalizationType = .words
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
    
    private let PhoneNumberField: UITextField = {
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
    
    private let TelephoneNumberField: UITextField = {
        let field = UITextField()
        field.autocapitalizationType = .none
        field.autocorrectionType = .no
        field.returnKeyType = .done
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
        button.setTitle("ADD USER", for: .normal)
        button.backgroundColor = .systemBlue
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 12
        button.layer.masksToBounds = true
        button.titleLabel?.font = .systemFont(ofSize: 20, weight: .bold)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        registerButton.addTarget(self,
                                      action: #selector(registerButtonTapped),
                                      for: .touchUpInside)
        firstNameField.delegate=self
        lastNameField.delegate=self
        dateOfBirthField.delegate=self
        GenderField.delegate=self
        CountryField.delegate=self
        StateField.delegate=self
        HomeTownField.delegate=self
        PhoneNumberField.delegate=self
        TelephoneNumberField.delegate=self
        
        view.addSubview(scrollView)
        scrollView.addSubview(imageView)
        scrollView.addSubview(firstNameField)
        scrollView.addSubview(lastNameField)
        scrollView.addSubview(dateOfBirthField)
        scrollView.addSubview(GenderField)
        scrollView.addSubview(CountryField)
        scrollView.addSubview(StateField)
        scrollView.addSubview(HomeTownField)
        scrollView.addSubview(PhoneNumberField)
        scrollView.addSubview(TelephoneNumberField)
        scrollView.addSubview(registerButton)
        // Do any additional setup after loading the view.
        
        imageView.isUserInteractionEnabled = true
        scrollView.isUserInteractionEnabled = true
        let gesture = UITapGestureRecognizer(target: self, action: #selector(didTapProfilePicture))
        imageView.addGestureRecognizer(gesture)
        
        
    }
    
    @objc private func didTapProfilePicture(){
        presentPhotoActionSheet()
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
        dateOfBirthField.frame = CGRect(x: 30,
                                   y: lastNameField.bottom+10,
                                   width: scrollView.width-60,
                                   height: 52)
        GenderField.frame = CGRect(x: 30,
                              y: dateOfBirthField.bottom+10,
                              width: scrollView.width-60,
                              height: 52)
        CountryField.frame = CGRect(x: 30,
                               y: GenderField.bottom+10,
                               width: scrollView.width-60,
                               height: 52)
        
        StateField.frame = CGRect(x: 30,
                             y: CountryField.bottom+10,
                             width: scrollView.width-60,
                             height: 52)
        HomeTownField.frame = CGRect(x: 30,
                                y: StateField.bottom+10,
                                width: scrollView.width-60,
                                height: 52)
        
        PhoneNumberField.frame = CGRect(x: 30,
                                   y: HomeTownField.bottom+10,
                                   width: scrollView.width-60,
                                   height: 52)
        TelephoneNumberField.frame = CGRect(x: 30,
                                       y: PhoneNumberField.bottom+10,
                                       width: scrollView.width-60,
                                       height: 52)
        
        registerButton.frame = CGRect(x: 30,
                                      y: TelephoneNumberField.bottom+10,
                                      width: scrollView.width-60,
                                      height: 52)
    }
    
    @objc private func registerButtonTapped() {
            
//            firstNameField.resignFirstResponder()
//            lastNameField.resignFirstResponder()

            guard let firstName = firstNameField.text,
                  let lastName = lastNameField.text,
                  let dob = dateOfBirthField.text,
                  let gender=GenderField.text,
                  let country = CountryField.text,
                  let state=StateField.text,
                  let homeTown=HomeTownField.text,
                  let phoneNumber=PhoneNumberField.text,
                  let telephone=TelephoneNumberField.text,
                !firstName.isEmpty,
                !lastName.isEmpty,
        !dob.isEmpty,
        !gender.isEmpty,
        !country.isEmpty,
        !state.isEmpty,
        !homeTown.isEmpty,
        !phoneNumber.isEmpty,
        !telephone.isEmpty
        
                else {
                    alertUserRegisterError()
                    return
            }

    }
    
    func alertUserRegisterError(){
        let alert = UIAlertController(title: "Try Again", message: "Please Enter All Information Correctly to Register" , preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Dismiss", style: .cancel, handler: nil))
        present(alert,animated: true)
    }
    
}

extension RegisterViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
    
}

extension RegisterViewController:UIImagePickerControllerDelegate,UINavigationControllerDelegate {
    func presentPhotoActionSheet(){
        let actionSheet=UIAlertController(title: "User Image", message: "Select Method of Upload", preferredStyle: .actionSheet)
        actionSheet.addAction(UIAlertAction(title: "Cancel",
                                            style: .cancel,
                                            handler: nil))
        actionSheet.addAction(UIAlertAction(title: "Take Photo",
                                            style: .default,
                                            handler: {[weak self] _ in
                                                self?.presentCamera()
                                            }))
        actionSheet.addAction(UIAlertAction(title: "Choose Photo",
                                            style: .default,
                                            handler: {[weak self] _ in
                                                self?.presentPhotoPicker()
                                            }))
        present(actionSheet, animated: true)
    }
    
    func presentCamera(){
        let viewImage = UIImagePickerController()
        viewImage.sourceType = .camera
        viewImage.delegate=self
        viewImage.allowsEditing=true
        present(viewImage,animated: true)
    }

    func presentPhotoPicker(){
        let viewImage = UIImagePickerController()
        viewImage.sourceType = .photoLibrary
        viewImage.delegate=self
        viewImage.allowsEditing=true
        present(viewImage,animated: true)
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        picker.dismiss(animated: true, completion: nil)
        guard let finalImage = info[UIImagePickerController.InfoKey.editedImage] as? UIImage else{
            return
        }
        self.imageView.image = finalImage
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true, completion: nil)
    }
}
