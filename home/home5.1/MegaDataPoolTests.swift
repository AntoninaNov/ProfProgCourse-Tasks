import XCTest
@testable import YourProjectName

class MegaDataPoolTests: XCTestCase {

    func testAcquireRelease() {
        let poolSize = 10
        let pool = MegaDataPool(poolSize: poolSize)

        XCTAssertEqual(pool.size(), poolSize)
        XCTAssertEqual(pool.usedSize(), 0)

        var acquiredObjects: [MegaData] = []
        for _ in 0..<poolSize {
            if let obj = pool.acquire() {
                acquiredObjects.append(obj)
            }
        }

        XCTAssertEqual(pool.usedSize(), poolSize)
        XCTAssertNil(pool.acquire())

        for obj in acquiredObjects {
            pool.release(obj)
        }

        XCTAssertEqual(pool.usedSize(), 0)
    }

    func testReuseObjects() {
        let poolSize = 5
        let pool = MegaDataPool(poolSize: poolSize)

        var obj1 = pool.acquire()
        var obj2 = pool.acquire()

        XCTAssertNotNil(obj1)
        XCTAssertNotNil(obj2)
        XCTAssertEqual(pool.usedSize(), 2)

        pool.release(obj1!)
        pool.release(obj2!)

        XCTAssertEqual(pool.usedSize(), 0)

        obj1 = pool.acquire()
        obj2 = pool.acquire()

        XCTAssertEqual(pool.usedSize(), 2)

        XCTAssertNotNil(obj1)
        XCTAssertNotNil(obj2)
    }
}
