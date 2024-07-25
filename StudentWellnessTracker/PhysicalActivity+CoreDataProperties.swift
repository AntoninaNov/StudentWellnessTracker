import Foundation
import CoreData

extension CDPhysicalActivity {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<CDPhysicalActivity> {
        return NSFetchRequest<CDPhysicalActivity>(entityName: "CDPhysicalActivity")
    }

    @NSManaged public var id: UUID?
    @NSManaged public var userId: UUID?
    @NSManaged public var activityDate: Date?
    @NSManaged public var activityType: String?
    @NSManaged public var duration: Int16
    @NSManaged public var caloriesBurned: Int16
    @NSManaged public var user: CDUser?

}

extension CDPhysicalActivity : Identifiable {

}
