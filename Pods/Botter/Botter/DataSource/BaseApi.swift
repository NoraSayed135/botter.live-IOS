//
//  BaseApi.swift
//  ADSC
//
//  Created by SherifShokry on 8/6/19.
//  Copyright © 2019 SherifShokry. All rights reserved.
//

import Foundation
import Alamofire

class BaseDataSource : Any {
    
    struct  Constants {
        static var STAGING_URL = "https://gamma-api.botter.live/"
        static var PRODUCTION_URL = "https://prod-api.botter.live/"
        static var BASE_URL = PRODUCTION_URL
        static var BOTTER_DATA = BASE_URL + "widget/data/"
        static var FAQ_DATA = BASE_URL + "widget/faqs/"
        static var UPLOAD_ATTACHMENT = BASE_URL + "api/file/upload"
    }
    
    public enum ResponseStatus: String {
        case error = "error"
        case sucess = "success"
        case networkError = "networkError"
    }
    
    func BaseAPI(url:String , method: HTTPMethod,params:[String:Any]? , headers :[String:Any]? ,completion:@escaping([String:Any]?,Error?)->Void){
        
        AF.request(url, method: method, parameters:params, encoding:JSONEncoding.default, headers: HTTPHeaders.init(headers as? [String : String] ?? [:]))
            .responseJSON { (response) in
                switch(response.result){
                case .success(_):
                    
                    let json = response.value as? [String: Any]
                    completion(json,nil)
                    break
                case .failure(let error):
                    if let data = response.data {
                        print("Print Server Error: " + String(data: data, encoding: String.Encoding.utf8)!)
                    }
                    print(error)
                    completion(nil,response.error)
                    break
                }
        }
    }
    
    
    func BaseArrayAPI(url:String , method: HTTPMethod,params:[String:Any]? , headers :[String:Any]? ,completion:@escaping([[String:Any]]?,Error?)->Void){
        
        AF.request(url, method: method, parameters:params, encoding:JSONEncoding.default, headers: HTTPHeaders.init(headers as? [String : String] ?? [:]))
            .responseJSON { (response) in
                switch(response.result){
                case .success(_):
                    let json = response.value as? [[String: Any]]
                    completion(json,nil)
                    break
                case .failure(let error):
                    if let data = response.data {
                        print("Print Server Error: " + String(data: data, encoding: String.Encoding.utf8)!)
                    }
                    print(error)
                    completion(nil,response.error)
                    break
                }
        }
    }
    
    func upload(data: Data , mime : String , name: String , completion: @escaping ([String: Any]?, Error?) -> Void) {
        
        
        let headers: HTTPHeaders
        headers = ["Content-type": "multipart/form-data",
                   "Accept" : "application/json"]
        let url = try! URLRequest.init(url: "https://uploads.gamma.botter.live/api/file/upload", method: .post, headers: headers)
        
        
        AF.upload(multipartFormData: { (form) in
            form.append(data, withName: "file",fileName: name , mimeType: mime)
            
        }, with:url ).responseJSON { (response) in
            switch(response.result){
            case .success(_):
                let json = response.value as? [String: Any]
                completion(json,nil)
                break
            case .failure(let error):
                    if let data = response.data {
                        print("Print Server Error: " + String(data: data, encoding: String.Encoding.utf8)!)
                    }
                    print(error)
                    completion(nil,response.error)
                    break
                }
        }
        
        
    }
    
    
    
}
