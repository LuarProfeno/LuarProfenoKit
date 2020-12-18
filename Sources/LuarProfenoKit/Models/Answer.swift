//
// Copyright © 2020 Jorge Alegre. All rights reserved.
//

import Foundation

public struct LPAnswer: Codable {
    public let questionID: UUID
    public let answer: String

    private enum CodingKeys: String, CodingKey {
        case questionID = "question_id"
        case answer
    }

    public init(questionID: UUID, answer: String) {
        self.questionID = questionID
        self.answer = answer
    }
}
