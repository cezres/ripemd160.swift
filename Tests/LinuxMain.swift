import XCTest

import ripemd160Tests

var tests = [XCTestCaseEntry]()
tests += ripemd160Tests.allTests()
XCTMain(tests)
