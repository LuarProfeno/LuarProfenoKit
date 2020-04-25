//
// Copyright © 2020 Jorge Alegre. All rights reserved.
//

import Foundation

public struct LPFormSubmission: Codable {
    public let identifier: UUID
    public let formID: UUID
    public let answers: [LPAnswer]
    public let additionalComments: String?

    public init(identifier: UUID, formID: UUID, answers: [LPAnswer], additionalComments: String?) {
        self.identifier = identifier
        self.formID = formID
        self.answers = answers
        self.additionalComments = additionalComments
    }
}

public struct LPAnswer: Codable {
    public let questionID: UUID
    public let answer: String

    public init(questionID: UUID, answer: String) {
        self.questionID = questionID
        self.answer = answer
    }
}
