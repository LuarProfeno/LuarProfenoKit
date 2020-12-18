//
// Copyright © 2020 Jorge Alegre. All rights reserved.
//

import Foundation

public enum LPUserType: String, Codable {
    case patient
    case healthWorker = "health_worker"
}

public struct LPUser: Codable {
    public let identifier: UUID
    public let username: String
    public let dateOfBirth: Date
    public let treatmentStartDate: Date
    public let userType: LPUserType
    public let formSubmissions: [LPFormSubmission]

    private enum CodingKeys: String, CodingKey {
        case identifier
        case username
        case dateOfBirth = "date_of_birth"
        case treatmentStartDate = "treatment_start_date"
        case userType = "user_type"
        case formSubmissions = "form_submissions"
    }

    public init(
        identifier: UUID, username: String, dateOfBirth: Date,
        treatmentStartDate: Date, userType: LPUserType, formSubmissions: [LPFormSubmission]
    ) {
        self.identifier = identifier
        self.username = username
        self.dateOfBirth = dateOfBirth
        self.treatmentStartDate = treatmentStartDate
        self.userType = userType
        self.formSubmissions = formSubmissions
    }
}

#if canImport(Combine)
import Combine

extension LPUser: Identifiable {
    public var id: UUID { identifier }
}
#endif
