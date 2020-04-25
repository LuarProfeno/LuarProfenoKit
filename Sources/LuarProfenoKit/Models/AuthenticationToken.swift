//
// Copyright © 2020 Jorge Alegre. All rights reserved.
//

import Foundation

public struct LPAuthenticationToken: Codable {
    public let token: String

    public init(token: String) {
        self.token = token
    }
}
