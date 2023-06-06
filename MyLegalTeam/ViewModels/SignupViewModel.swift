//
//  SignupViewModel.swift
//  ModernFarm
//
//  Created by apple on 4/4/23.
//

import Foundation
import UIKit

struct SignupViewModel {
    
    private  let passwordLengthRange = (6, 14) // (minimum length, maximum length)
    private  let firstNameEmptyMessage = "Please Enter First Name"
    private let famliyNameEmptyMessage = "Please Enter Family Name"
    private let emailEmptyMessage = "Please Enter Email "
    private let emailValidMessage = "Please Enter Valid Email Address"
    private let passwordEmptyMessage = "Please Enter Password"
    private let confirmPasswordEmptyMessage = "Please Confirm Password"
    private let mobileNumberEmptyMessage = "Please Enter Mobile"
    private let passwordErrorMessage = "Password length must be in range 6-10 characters."
    private let passwordMatchMessage = "Password dose'nt Match"
    
    func validateInput(_ firstName: String?,_ famliyName: String?, _ email: String?,_ password: String? , _ confirmPassword: String?,_ mobileNumber: String? , completion: (Bool, String?) -> Void) {
        if let firstName = firstName {
            if firstName.isEmpty {
                completion(false, firstNameEmptyMessage)
                return
                
            }
            if let famliyName = famliyName{
                if famliyName.isEmpty{
                    completion(false, famliyNameEmptyMessage)
                }
            }
            if let email = email{
                if email.isEmpty{
                    completion(false, emailEmptyMessage)
                }else if !email.isValidEmail(){
                    completion(false, emailValidMessage)
                }
            }
            
            if let password = password{
                if password.isEmpty{
                    completion(false, passwordEmptyMessage)
                }
            }
            if let confirmPassword = confirmPassword{
                if confirmPassword.isEmpty{
                    completion(false, confirmPasswordEmptyMessage)
                }
            }
            if let mobileNumber = mobileNumber{
                if mobileNumber.isEmpty{
                    completion(false , mobileNumberEmptyMessage)
                }
            }
            if !(password == confirmPassword){
                completion(false , passwordMatchMessage)
            }
        }
//         Validated successfully.
        completion(true, nil)
    }
    
    private func validateTextLength(_ text: String, range: (Int, Int)) -> Bool {
        return (text.count >= range.0) && (text.count <= range.1)
    }
    
    
    
    func signup(_ requestModel: SignupRequestModel , completion: @escaping (Result<SignupResponse? , Error>) -> Void){
        
        let params = requestModel.getParams()
        print("Input:\(params)")
        APIService.sharedInstance.postRequest(loadinIndicator: true, urlString: Constants.URLs.baseUrl + Endpoint.shared.registerUrl, bodyData: params, completionBlock: { data , err in
            if err != nil{
                if let err = err{
                    completion(.failure(err))
                }
            }
            do{
                let jsonData = data?.toJSONString1().data(using: .utf8)!
                let decoder = JSONDecoder()
                if let successResponse = try? decoder.decode(SignupResponse.self, from: jsonData!) {
                    completion(.success(successResponse))
                } else if let responseError = try? decoder.decode(ErrorModel.self, from: jsonData!) {
                    completion(.failure(NSError(domain: responseError.message, code: 200)))
                }
            }
        })
        
    }
    
        func uploadImage(_ image: Data, completion: @escaping (Result<ImageUpload? , Error>) -> Void) {
            APIService.sharedInstance.uploadImage(loadinIndicator: false, urlString: Constants.URLs.baseUrl + Endpoint.shared.profilePhotoUpload, image: image, completionBlock: {data,err in
                if err != nil{
                    completion(.failure(err!))
                }
                do {
                  let jsonData = data?.toJSONString1().data(using: .utf8)!
                  let decoder = JSONDecoder()
                    if let successResponse = try? decoder.decode(ImageUpload.self, from: jsonData!) {
                        completion(.success(successResponse))
                    } else if let responseError = try? decoder.decode(ErrorModel.self, from: jsonData!) {
                        completion(.failure(NSError(domain: responseError.message, code: 200)))
                    }
                }
            })
        }
}

struct SignupRequestModel {
    var firstName: String
    var famliyName: String
    var email: String
    var password : String
    var mobileNumber: String
    var profilePhoto: String
    init(firstName: String, famliyName: String, email: String , password : String , mobileNumber : String, profilePhoto: String) {
        self.firstName = firstName
        self.famliyName = famliyName
        self.mobileNumber = mobileNumber
        self.email = email
        self.password = password
        self.profilePhoto = profilePhoto
        
    }
    
    func getParams() -> [String: Any] {
        return ["first_name": firstName , "last_name" : famliyName , "email": email, "password": password, "phone_number": mobileNumber , "profile_photo" : profilePhoto , "fcm_token" : "213"]
    }
}

// MARK: - SignupResponse
struct SignupResponse: Codable {
    let success: Bool
    let data: SignupResponseDataClass
    let token, message: String
}

// MARK: - SignupResponseDataClass
struct SignupResponseDataClass: Codable {
    let id: Int
    let firstName, lastName, email, password: String
    let phoneNumber, profilePhoto, fcmToken: String?
    let stripeCustomerID: String?
    let createdAt, updatedAt: String

    enum CodingKeys: String, CodingKey {
        case id
        case firstName = "first_name"
        case lastName = "last_name"
        case email, password
        case phoneNumber = "phone_number"
        case profilePhoto = "profile_photo"
        case fcmToken = "fcm_token"
        case stripeCustomerID = "stripe_customerId"
        case createdAt, updatedAt
    }
}

struct ErrorModel: Codable {
    let success: Bool
    let message: String
}
