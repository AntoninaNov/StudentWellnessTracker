import Foundation
import CoreData

extension CDUser {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<CDUser> {
        return NSFetchRequest<CDUser>(entityName: "CDUser")
    }

    @NSManaged public var id: UUID?
    @NSManaged public var name: String?
    @NSManaged public var age: Int16
    @NSManaged public var email: String?
    @NSManaged public var password: String?
    @NSManaged public var mentalHealthLogs: NSSet?
    @NSManaged public var physicalActivities: NSSet?
    @NSManaged public var nutritionLogs: NSSet?
    @NSManaged public var goals: NSSet?

}

// MARK: Generated accessors for mentalHealthLogs
extension CDUser {

    @objc(addMentalHealthLogsObject:)
    @NSManaged public func addToMentalHealthLogs(_ value: CDMentalHealth)

    @objc(removeMentalHealthLogsObject:)
    @NSManaged public func removeFromMentalHealthLogs(_ value: CDMentalHealth)

    @objc(addMentalHealthLogs:)
    @NSManaged public func addToMentalHealthLogs(_ values: NSSet)

    @objc(removeMentalHealthLogs:)
    @NSManaged public func removeFromMentalHealthLogs(_ values: NSSet)

}

// MARK: Generated accessors for physicalActivities
extension CDUser {

    @objc(addPhysicalActivitiesObject:)
    @NSManaged public func addToPhysicalActivities(_ value: CDPhysicalActivity)

    @objc(removePhysicalActivitiesObject:)
    @NSManaged public func removeFromPhysicalActivities(_ value: CDPhysicalActivity)

    @objc(addPhysicalActivities:)
    @NSManaged public func addToPhysicalActivities(_ values: NSSet)

    @objc(removePhysicalActivities:)
    @NSManaged public func removeFromPhysicalActivities(_ values: NSSet)

}

// MARK: Generated accessors for nutritionLogs
extension CDUser {

    @objc(addNutritionLogsObject:)
    @NSManaged public func addToNutritionLogs(_ value: CDNutrition)

    @objc(removeNutritionLogsObject:)
    @NSManaged public func removeFromNutritionLogs(_ value: CDNutrition)

    @objc(addNutritionLogs:)
    @NSManaged public func addToNutritionLogs(_ values: NSSet)

    @objc(removeNutritionLogs:)
    @NSManaged public func removeFromNutritionLogs(_ values: NSSet)

}

// MARK: Generated accessors for goals
extension CDUser {

    @objc(addGoalsObject:)
    @NSManaged public func addToGoals(_ value: CDGoal)

    @objc(removeGoalsObject:)
    @NSManaged public func removeFromGoals(_ value: CDGoal)

    @objc(addGoals:)
    @NSManaged public func addToGoals(_ values: NSSet)

    @objc(removeGoals:)
    @NSManaged public func removeFromGoals(_ values: NSSet)

}

extension CDUser : Identifiable {

}
