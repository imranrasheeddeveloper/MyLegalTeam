//
//  SignupVC.swift
//  ModernFarm
//
//  Created by apple on 4/4/23.
//

import UIKit
import DialCountries
class SignupVC: UIViewController, UINavigationControllerDelegate {
    
    @IBOutlet weak var pofileUploadbtn : UIButton!
    @IBOutlet weak var profileImg : UIImageView!
    @IBOutlet weak var firstNameTF : UITextField!
    @IBOutlet weak var familyNameTF : UITextField!
    @IBOutlet weak var passwordTF : UITextField!
    @IBOutlet weak var confirmpasswordTF : UITextField!
    @IBOutlet weak var conutryCodeTF : UITextField!
    @IBOutlet weak var mobilenumberTF : UITextField!
    @IBOutlet weak var emailTF : UITextField!
    @IBOutlet weak var createAccountbtn : UIButton!
    @IBOutlet weak var siginLbl: UILabel!
    @IBOutlet weak var checkBox: UIButton!
    
    var picker = UIImagePickerController()
    let signupViewModel = SignupViewModel()
    var countryCode : String?
    var iconClick = false
    var confirmPasswordIConClick = false
    let imageicon =  UIImageView ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        self.navigationController?.navigationBar.isHidden =  true
        
    }
    
    @IBAction func didClickCountryCodeTF(_ sender: UITextField) {
        //countryCodePicker()
    }
    @IBAction func didClickCheckBox(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        
    }
    func setupView() {
        profileImg.roundview(profileImg.frame.height / 2 )
        firstNameTF.textfiledRoundview(13)
        emailTF.textfiledRoundview(13)
        familyNameTF.textfiledRoundview(13)
        passwordTF.textfiledRoundview(13)
        confirmpasswordTF.textfiledRoundview(13)
        conutryCodeTF.textfiledRoundview(13)
        mobilenumberTF.textfiledRoundview(13)
        createAccountbtn.roundview(13)
        passwordTF.enablePasswordToggle()
        confirmpasswordTF.enablePasswordToggle()
        
        if let code = Country.getCurrentCountry(){
            conutryCodeTF.text = "\(code.flag) \(code.dialCode ?? "+92")"
            countryCode = code.dialCode
        }
        siginLbl.isUserInteractionEnabled = true
        let tap = UITapGestureRecognizer(target: self, action: #selector(redirectToLogin))
        siginLbl.addGestureRecognizer(tap)
        
    }
    
    @objc func redirectToLogin(){
        RedirectionHelper.redirectToLogin(self)
    }
    
    
    @IBAction func didClickCreateAccount( _ sender: UIButton) {
        
        
        signupViewModel.validateInput(firstNameTF.text, familyNameTF.text, emailTF.text, passwordTF.text, confirmpasswordTF.text, mobilenumberTF.text) { (success, message) in
            if success{
                
                
                signupViewModel.uploadImage(profileImg.image!.pngData()!, completion: { [self] result in
                    switch result {
                    case .success(let data):
                        guard let responseModel = data else {return}
                        if responseModel.success {
                            let filePath = responseModel.filePATH
                            let requestModel =  SignupRequestModel(firstName: firstNameTF.text!, famliyName: familyNameTF.text!, email: emailTF.text!, password: passwordTF.text!, mobileNumber: "\(countryCode ?? "+92")\(mobilenumberTF.text!)" , profilePhoto : filePath)
                            
                            signupViewModel.signup(requestModel, completion: {[self] result in
                                switch result{
                                case .success(let data):
                                    if let data = data{
                                        if data.success{
                                            UserDefaults.standard.save(customObject: data, inKey: "userData")
                                            RedirectionHelper.redirectToHome()
                                        }else{
                                            self.showAlert("Error", message: data.message, actions: ["okay"], completion: {_ in
                                                self.dismiss(animated: true, completion: nil)
                                            })
                                        }
                                    }
                                case .failure(let error):
                                    self.showAlert("Eror", message: error.localizedDescription, actions: ["Okay"], completion: {_ in
                                        self.dismiss(animated: true)
                                    })
                                    
                                }
                            })
                            
                            
                        }
                    case .failure(let error):
                        print(error)
                    }
                })
            }else{
                let alertController = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
                
                let alertControllerAction = UIAlertAction(title: "Okay", style: .default){_ in
                    self.dismiss(animated: true)
                }
                alertController.addAction(alertControllerAction)
                self.present(alertController, animated: true)
            }
        }
        
    }
    
    
    @IBAction func didClickCountryCode(_ sender: UITextField) {
        conutryCodeTF.resignFirstResponder()
        countryCodePicker()
    }
    
    @IBAction func didClickUploadProfile( _ sender : UIButton){
        imagePrickeralert()
    }
    
    
    func countryCodePicker()  {
        let controller = DialCountriesController(locale: Locale(identifier: "En"))
        controller.delegate = self
        controller.show(vc: self)
    }
    
    func imagePrickeralert() {
        let alert:UIAlertController=UIAlertController(title: "Choose Image", message: nil, preferredStyle: .actionSheet)
        let cameraAction = UIAlertAction(title: "Camera", style: .default)
        {
            UIAlertAction in
            self.openCamera()
        }
        let gallaryAction = UIAlertAction(title: "Gallary", style: .default)
        {
            UIAlertAction in
            self.openGallary()
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: .default)
        {
            UIAlertAction in
        }
        
        // Add the actions
        picker.delegate = self
        alert.addAction(cameraAction)
        alert.addAction(gallaryAction)
        alert.addAction(cancelAction)
        self.present(alert, animated: true, completion: nil)
    }
}




extension SignupVC : UIImagePickerControllerDelegate{
    
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        picker.dismiss(animated: true, completion: nil)
        if let possibleImage = info[.editedImage] as? UIImage {
            profileImg.image = possibleImage
        } else if let possibleImage = info[.originalImage] as? UIImage {
            profileImg.image = possibleImage
        } else {
            return
        }
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController){
        print("picker cancel.")
    }
    
    func openCamera(){
        if(UIImagePickerController .isSourceTypeAvailable(UIImagePickerController.SourceType.camera)){
            picker.sourceType = UIImagePickerController.SourceType.camera
            self.present(picker, animated: true, completion: nil)
        }else{
            let alert = UIAlertController()
            alert.title = "Warning"
            alert.message = "You don't have camera"
            
            let warningBtn = UIAlertAction(title: "Ok", style: .default)
            {_ in
                self.present(alert, animated: true)
            }
            alert.addAction(warningBtn)
            
        }
    }
    func openGallary(){
        picker.sourceType = UIImagePickerController.SourceType.photoLibrary
        self.present(picker, animated: true, completion: nil)
    }
    
}
extension SignupVC: DialCountriesControllerDelegate {
    func didSelected(with country: Country) {
        conutryCodeTF.text = "\(country.flag) \(country.dialCode ?? "+92")"
        countryCode = country.dialCode
    }
}
