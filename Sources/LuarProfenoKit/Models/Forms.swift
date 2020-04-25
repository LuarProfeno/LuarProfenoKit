//
// Copyright © 2020 Jorge Alegre. All rights reserved.
//

import Foundation

public struct LPForm: Codable {
    public let identifier: UUID
    public let treatmentDay: Int
    public let questions: [LPQuestion]

    public init(identifier: UUID, treatmentDay: Int, questions: [LPQuestion]) {
        self.identifier = identifier
        self.treatmentDay = treatmentDay
        self.questions = questions
    }
}

public enum LPAnswerType: Codable {
    case textOptions(options: [String])
    case boolean
    case date

    private enum CodingKeys: CodingKey {
        case textOptions
    }

    public func encode(to encoder: Encoder) throws {
        switch self {
        case let .textOptions(options):
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encode(options, forKey: .textOptions)
        case .boolean:
            var container = encoder.singleValueContainer()
            try container.encode("boolean")
        case .date:
            var container = encoder.singleValueContainer()
            try container.encode("date")
        }
    }

    public init(from decoder: Decoder) throws {
        do {
            switch try decoder.singleValueContainer().decode(String.self) {
            case "boolean":
                self = .boolean
            case "date":
                self = .date
            default:
                fatalError("Key not recognized")
            }
        } catch {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            let textOptions = try container.decode([String].self, forKey: .textOptions)
            self = .textOptions(options: textOptions)
        }
    }
}

public struct LPQuestion: Codable {
    public let identifier: UUID
    public let question: String
    public let answerType: LPAnswerType

    public init(identifier: UUID, question: String, answerType: LPAnswerType) {
        self.identifier = identifier
        self.question = question
        self.answerType = answerType
    }
}
