import Foundation
import CoreData

extension CDNutrition {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<CDNutrition> {
        return NSFetchRequest<CDNutrition>(entityName: "CDNutrition")
    }

    @NSManaged public var id: UUID?
    @NSManaged public var userId: UUID?
    @NSManaged public var mealDate: Date?
    @NSManaged public var mealType: String?
    @NSManaged public var caloriesIntake: Int16
    @NSManaged public var user: CDUser?

}

extension CDNutrition : Identifiable {

}
