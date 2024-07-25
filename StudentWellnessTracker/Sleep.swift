import Foundation

struct Sleep: Identifiable {
    let id = UUID()
    var userId: String
    var sleepDate: Date
    var sleepStartTime: Date
    var sleepEndTime: Date
}
