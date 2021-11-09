//
//  Created by Emarsys
//

import XCTest
@testable import emarsys_sdk
import EmarsysSDK

class InAppPauseCommandTests: XCTestCase {
    
    var command: InAppPauseCommand!
    
    override func setUp() {
        command = InAppPauseCommand()
    }
    
    func testExecute_returnSuccess_WhenCalled() throws {
        Emarsys.setup(config: EMSConfig.make(builder: { builder in
            builder.setMobileEngageApplicationCode("EMS11-C3FD3")
        }))
        
        let expectedResponse = ["success": true]
        var result = [String: Any]()

        command?.execute(arguments: [:]) { response in
            result = response
        }

        XCTAssertEqual(result as? [String: Bool], expectedResponse)
    }

}
