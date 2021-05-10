////
////  PhotoToFirebase.swift
////  Introtuce-Submission
////
////  Created by Darshil Agrawal on 11/05/21.
////
//
//import Foundation
//import FirebaseStorage
//
//
//final class PhotoToFirebase{
//    static let shared = PhotoToFirebase()
//    let storage=Storage.storage().reference()
//
//    public func uploadProfilePicture(with data:Data,fileName:String,
//                                     completion:@escaping (String) -> Void){
//        storage.child("images/\(fileName)").putData(data, metadata: nil, completion: { [weak self] metadata, error in
//            guard let strongSelf = self else {
//                return
//            }
//
//            guard error == nil else {
//                // failed
//                print("failed to upload data to firebase for picture")
//                return
//            }
//
//            strongSelf.storage.child("images/\(fileName)").downloadURL(completion: { url, error in
//                guard let url = url else {
//                    print("Failed to get download url")
//                    return
//                }
//
//                let urlString = url.absoluteString
//                print("download url returned: \(urlString)")
//            })
//        })
//    }
//}
