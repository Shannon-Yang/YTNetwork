//
//  SYNetworkingCacheRequest.swift
//  SYNetworking
//
//  Created by Shannon Yang on 2017/2/4.
//  Copyright © 2017年 Hangzhou Yunti Technology Co. Ltd. All rights reserved.
//

import Foundation
import Alamofire
import ObjectMapper
import SwiftyJSON
import SYNetworking

class SYNetworkingCacheRequest: SYDataRequest {

    let requestUrlString: String
    let method: HTTPMethod
    let parameters: [String : Any]?
    
    init(requestUrlString: String, method: HTTPMethod = .post, parameters: [String : Any]? = nil) {
        self.requestUrlString = requestUrlString
        self.method = method
        self.parameters = parameters
        super.init()
    }
    
    override var requestURLString: String {
        return self.requestUrlString
    }
    
    override var requestMethod: HTTPMethod {
        return self.method
    }
    
    override var requestParameters: [String : Any]? {
        return self.parameters
    }
    
    override var cacheTimeInSeconds: Int {
         return 1000
    }
}

