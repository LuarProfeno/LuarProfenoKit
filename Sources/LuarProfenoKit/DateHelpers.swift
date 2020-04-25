//
// Copyright © 2020 Jorge Alegre. All rights reserved.
//

import Foundation

public extension DateFormatter {
    static let dateOfBirthPasswordDateFormatter: DateFormatter = {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        dateFormatter.timeZone = TimeZone(secondsFromGMT: 0)
        return dateFormatter
    }()
}

public extension Date {
    var asPasswordString: String {
        DateFormatter.dateOfBirthPasswordDateFormatter.string(from: self)
    }
}
