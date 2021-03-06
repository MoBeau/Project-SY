//
//  storageContoller.swift
//  ProjectSY
//
//  Created by 한상현 on 2020/09/06.
//  Copyright © 2020 한상현. All rights reserved.
//

import Foundation
import FirebaseStorage

struct AppStorage {
    static let shared = AppStorage()
    
    let storage = Storage.storage()
    
    func upload(subPath: String, uploadData: Data, metadata: StorageMetadata){
        let userProfileImageRef = storage.reference().child(subPath)
        
        userProfileImageRef.putData(uploadData, metadata: metadata) { (metadata, error) in
            guard metadata != nil else {
                print("Storage Upload Error: \(String(describing: error))")

                return
            }
            
            print("path: \(subPath) : Storage Uploaded Successfully")
        }
    }
    
    func download(subPath: String) -> Data? {
        return nil
    }
    
    func getMetaData(subPath: String) -> NSDictionary? {
        return nil
    }
}
