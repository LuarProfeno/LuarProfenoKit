//
// Copyright © 2020 Jorge Alegre. All rights reserved.
//

import Foundation

public struct LPFormSubmission: Codable {
    public let identifier: UUID
    public let formID: UUID
    public let answers: [LPAnswer]
    public let additionalComments: String?

    private enum CodingKeys: String, CodingKey {
        case identifier
        case formID = "form_id"
        case answers
        case additionalComments = "additional_comments"
    }

    public init(identifier: UUID, formID: UUID, answers: [LPAnswer], additionalComments: String?) {
        self.identifier = identifier
        self.formID = formID
        self.answers = answers
        self.additionalComments = additionalComments
    }
}

#if canImport(Combine)
import Combine

extension LPFormSubmission: Identifiable {
    public var id: UUID { identifier }
}
#endif
