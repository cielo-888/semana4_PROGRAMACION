//
//  UserViewModel.swift
//  Semana4
//
//  Created by MAC11 on 7/10/22.
//

import Foundation
class UserViewModel{
    
    var users:[User] = []
    
    func getUsers() -> [User] {
        return users
    }
    
    func createUser(user:User) {
        users.append(user)
    }
}
