//
//  SignupFormModelValidator.swift
//  TDD project Unit Test
//
//  Created by mac on 8/8/21.
//

import Foundation


class SignupFormModelValidator {
    
    func isFirstNameValid(firstName: String) -> Bool {
        var returnValue = true
        
        if firstName.count < 2 {
            returnValue = false
        }
        
        return returnValue
    }
    
    
    
    
    
}
