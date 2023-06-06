//
//  Endpoints.swift
//  IamHere
//
//  Created by Imran Rasheed on 09/09/2022.
//

import Foundation
struct Endpoint {
    static let shared = Endpoint()
    
    var loginUrl = "/users/login"
    var registerUrl = "/users/register_user"
    var profilePhotoUpload = "/users/upload_profile_Photo"
}
