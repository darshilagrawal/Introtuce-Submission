//
//  DatabaseManager.swift
//  Introtuce-Submission
//
//  Created by Darshil Agrawal on 11/05/21.
//

import Foundation
import FirebaseDatabase

final class DatabaseManager {
    static let shared = DatabaseManager()
    let database = Database.database().reference(withPath: "users")
    
//    public func validateNewUserwithPhone(with phoneNumber:String,completion: @escaping ((Bool) -> Void)
//    ){
//        database.child(phoneNumber).observeSingleEvent(of: .value) { snapshot in
//            guard snapshot.value as? String != nil else{
//                completion(false)
//                return
//            }
//            completion(true)
//        }
//    }
    
    public func insertUser(with user: RegisteredUser){
        database.child(user.phoneNumber).setValue([
            "first_name":user.firstName,
            "last_name":user.lastName,
            "dob":user.dob,
            "gender":user.gender,
            "country":user.country,
            "state":user.state,
            "homeTown":user.homeTown,
            "phoneNumber":user.phoneNumber,
            "telephoneNumber":user.telephoneNumber,
        
        ])
        
    }
}

struct RegisteredUser{
   
    let firstName:String
    let lastName:String
    let dob:String
    let gender:String
    let country:String
    let state:String
    let homeTown:String
    let phoneNumber:String
    let telephoneNumber:String
    var profilePictureFileName:String{
        return "\(phoneNumber)_profile_picture.png"
    }
}
