import Foundation
import CoreData

extension CDMentalHealth {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<CDMentalHealth> {
        return NSFetchRequest<CDMentalHealth>(entityName: "CDMentalHealth")
    }

    @NSManaged public var id: UUID?
    @NSManaged public var userId: UUID?
    @NSManaged public var checkInDate: Date?
    @NSManaged public var mood: String?
    @NSManaged public var journalEntry: String?
    @NSManaged public var user: CDUser?

}

extension CDMentalHealth : Identifiable {

}
