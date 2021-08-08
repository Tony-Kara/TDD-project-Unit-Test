//
//  SignFormModelValidator.swift
//  TDD project Unit TestTests
//
//  Created by mac on 8/8/21.
//

import XCTest
@testable import TDD_project_Unit_Test
class SignFormModelValidatorTests: XCTestCase {
    
    var sut:  SignupFormModelValidator!

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        sut = SignupFormModelValidator()
        
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        sut = nil
    }

    func testSignFormModelValidator_WhenValidFirstNameProvided_ShouldReturnTrue() {
        
        // Arrange
        
       //Act
        
        let isFirstNameValid = sut.isFirstNameValid(firstName: "Tony")
        
        //Assert
        
        XCTAssertTrue(isFirstNameValid, "The isFirstNameValid() should have returned TRUE for a valid first name but returned FALSE")
        
    }
    
    func testSignupFormModelValidator_WhenTooShortFirstNameProvided_ShouldReturnFalse(){
        
     // Arrange
    
     // Act
        let isFirstNameValid = sut.isFirstNameValid(firstName: "S")
        
     // Assert
        
        XCTAssertFalse(isFirstNameValid, "The isFirstNameValid() should have returned FALSE for a first name that is shorter than \(SignUpConstants.firstNameMinLength) characters but it has returned TRUE")
        
    }
    
    
    func testtestSignupFormModelValidator_WhenTooLongFirstNameProvided_ShouldReturnFalse() {
        
        let isFirstNameValid = sut.isFirstNameValid(firstName: "TonyEniolaTonyEniola")
        
        XCTAssertFalse(isFirstNameValid, "The isFirstNameValid() should have returned FALSE for a first name that is longer than \(SignUpConstants.firstNameMaxLenght)  characters but it has returned TRUE")
        
    }
    
    
}
