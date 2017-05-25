//
//  User.swift
//  SideGuideGZ
//
//  Created by zhen gong on 5/24/17.
//  Copyright © 2017 zhen gong. All rights reserved.
//

import Foundation

class User: BaseObject {
    
    lazy var updatedAt: Date = self.getDateFromData(isUpdatedAt: false) as Date
    
    var username: String {
        get { return data.object(forKey: "username") as! String }
    }
    
    var email: String {
        get { return data.object(forKey: "email") as! String }
    }
    
    var points: Int {
        get { return (data.object(forKey: "points")! as AnyObject).intValue! }
    }
    
}
