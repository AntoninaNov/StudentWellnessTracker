import Foundation
import CoreData

extension CDGoal {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<CDGoal> {
        return NSFetchRequest<CDGoal>(entityName: "CDGoal")
    }

    @NSManaged public var id: UUID?
    @NSManaged public var userId: UUID?
    @NSManaged public var goalDescription: String?
    @NSManaged public var progress: Int16
    @NSManaged public var user: CDUser?

}

extension CDGoal : Identifiable {

}
