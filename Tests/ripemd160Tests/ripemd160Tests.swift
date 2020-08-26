import XCTest
@testable import ripemd160

final class ripemd160Tests: XCTestCase {

    func testRIPEMD160() {
        XCTAssertEqual("".data(using: .utf8)!.ripemd160.hex, "9c1185a5c5e9fc54612808977ee8f548b2258d31")
        XCTAssertEqual("a".data(using: .utf8)!.ripemd160.hex, "0bdc9d2d256b3ee9daae347be6f4dc835a467ffe")
        XCTAssertEqual("abc".data(using: .utf8)!.ripemd160.hex, "8eb208f7e05d987a9b044a8e98c6b087f15a0bfc")
        XCTAssertEqual("message digest".data(using: .utf8)!.ripemd160.hex, "5d0689ef49d2fae572b881b123a85ffa21595f36")
        XCTAssertEqual("abcdefghijklmnopqrstuvwxyz".data(using: .utf8)!.ripemd160.hex, "f71c27109c692c1b56bbdceb5b9d2865b3708dbc")
        XCTAssertEqual("abcdbcdecdefdefgefghfghighijhijkijkljklmklmnlmnomnopnopq".data(using: .utf8)!.ripemd160.hex, "12a053384a9c0c88e405a06c27dcf49ada62eb2b")
        XCTAssertEqual("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789".data(using: .utf8)!.ripemd160.hex, "b0e20b6e3116640286ed3a87a5713079b21f5189")
    }

    static var allTests = [
        ("testRIPEMD160", testRIPEMD160),
    ]
}

extension Data {
    public init?(hex: String) {
        let len = hex.count / 2
        var data = Data(capacity: len)
        for i in 0..<len {
            let j = hex.index(hex.startIndex, offsetBy: i * 2)
            let k = hex.index(j, offsetBy: 2)
            let bytes = hex[j..<k]
            if var num = UInt8(bytes, radix: 16) {
                data.append(&num, count: 1)
            } else {
                return nil
            }
        }
        self = data
    }

    public var hex: String {
        return reduce("") { $0 + String(format: "%02x", $1) }
    }
}
