//
//  SignFormModelValidator.swift
//  TDD project Unit TestTests
//
//  Created by mac on 8/8/21.
//

import XCTest
@testable import TDD_project_Unit_Test
class SignFormModelValidatorTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testSignFormModelValidator_WhenValidFirstNameProvided_ShouldReturnTrue() {
        
        // Arrange
        
        let sut = SignupFormModelValidator()
        
        //Act
        
        let isFirstNameValid = sut.isFirstNameValid(firstName: "Tony")
        
        //Assert
        
        XCTAssertTrue(isFirstNameValid, "The isFirstNameValid() should have returned TRUE for a valid first name but returned FALSE")
        
    }
    
    
}
