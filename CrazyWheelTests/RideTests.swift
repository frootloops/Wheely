//
//  CrazyWheelTests.swift
//  CrazyWheelTests
//
//  Created by Arsen Gasparyan on 03/04/15.
//  Copyright (c) 2015 Arsen Gasparyan. All rights reserved.
//

import UIKit
import XCTest

class RideTests: XCTestCase {
  func testValidDictionary() {
    let ride = Ride.decode(validDictionary())
    XCTAssertTrue(ride != nil)
    
    XCTAssertTrue(ride?.id == (validDictionary()["id"] as! Int))
    XCTAssertTrue(ride?.title == (validDictionary()["title"] as! String))
    XCTAssertTrue(ride?.body == (validDictionary()["text"] as! String))
  }
  
  func testInvalidDictionary() {
    XCTAssertTrue(Ride.decode(invalidDictionary()) == nil)
  }
  
  private func validDictionary() -> NSDictionary {
    return [ "id": 1, "title": "Title text", "text": "Just text" ]
  }
  
  private func invalidDictionary() -> NSDictionary {
    return [ "foo": 1 ]
  }
}
