//
//  LoginAppTests.swift
//  LoginAppTests
//
//  Created by Naveen Ramachandrappa on 5/8/23.
//

import XCTest
@testable import LoginApp

final class LoginAppTests: XCTestCase {
    
    var subject:LoginViewModel?
    
    override func setUp() {
        super.setUp()
        subject = LoginViewModel()
    }
    
    override func tearDown() {
        super.tearDown()
        subject = nil
    }
    
    func testDisplaysErrorMessageWhenUserNameAndPasswordAreEmpty() {
        subject?.userName = ""
        subject?.password = ""
        subject?.isInvalidLogin = false
        subject?.login()
        XCTAssertTrue(subject?.isInvalidLogin ?? false)
        
    }
    
    func testErrorMessageShouldNotDisplayWhenUserNameAndPasswordAreNotEmpty() {
        subject?.userName = "abc"
        subject?.password = "xyz"
        subject?.isInvalidLogin = true
        subject?.login()
        XCTAssertFalse(subject?.isInvalidLogin ?? true)
    }
    
    func testDisplaysErrorMessageWhenUserNameIsEmpty() {
        subject?.userName = ""
        subject?.password = "xyz"
        subject?.isInvalidLogin = false
        subject?.login()
        XCTAssertTrue(subject?.isInvalidLogin ?? false)
    }
    
    func testDisplaysErrorMessageWhenPasswordIsEmpty() {
        subject?.userName = "abc"
        subject?.password = ""
        subject?.isInvalidLogin = false
        subject?.login()
        XCTAssertTrue(subject?.isInvalidLogin ?? false)
    }

}
