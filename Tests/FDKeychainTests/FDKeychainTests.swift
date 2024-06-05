import XCTest
@testable import FDKeychain

final class FDKeychainTests: XCTestCase {
    let value: NSString = NSString(string: "Test1")
    let key = "keytest"
    let service = "com.fdkeychain"

    override func setUp() {
            super.setUp()
            try? FDKeychain.saveItem(value as NSCoding, forKey: key, forService: service)
        }

    override func tearDown() {
            // Clean up any resources
        try? FDKeychain.deleteItem(forKey: key, forService: service)
            super.tearDown()
        }

    func testString()  {
        
        let item = try? FDKeychain.item(forKey: key, of: NSString.classForCoder(), forService: service, inAccessGroup: nil) as? NSString

        XCTAssertEqual(item, value)
    }

    func testWrongKind()  {
        do {
            let itemFail = try FDKeychain.item(forKey: key, of: NSNumber.classForCoder(), forService: service, inAccessGroup: nil) as? NSString
            XCTAssertNil(itemFail)
        } catch {
            XCTAssertTrue(true)
        }
    }
}
