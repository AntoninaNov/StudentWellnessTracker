import XCTest
import CoreData
@testable import StudentWellnessTracker

class StudentWellnessTrackerTests: XCTestCase {

    var context: NSManagedObjectContext!

    override func setUpWithError() throws {
        super.setUp()
        // Set up an in-memory managed object context for tests
        context = PersistenceController(inMemory: true).container.viewContext
    }

    override func tearDownWithError() throws {
        context = nil
        super.tearDown()
    }

    // MARK: Journal Entity Tests
    func testCreateJournalEntry() {
        let journalEntry = Journal(context: context)
        journalEntry.date = Date()
        journalEntry.journalText = "Test Journal Entry"

        XCTAssertNoThrow(try context.save())

        let fetchRequest: NSFetchRequest<Journal> = Journal.fetchRequest()
        let results = try? context.fetch(fetchRequest)
        XCTAssertEqual(results?.count, 1)
        let fetchedEntry = results?.first
        XCTAssertEqual(fetchedEntry?.journalText, "Test Journal Entry")
    }

    func testUpdateJournalEntry() {
        let journalEntry = Journal(context: context)
        journalEntry.date = Date()
        journalEntry.journalText = "Original Text"

        XCTAssertNoThrow(try context.save())

        journalEntry.journalText = "Updated Text"
        XCTAssertNoThrow(try context.save())

        let fetchRequest: NSFetchRequest<Journal> = Journal.fetchRequest()
        let results = try? context.fetch(fetchRequest)
        let fetchedEntry = results?.first
        XCTAssertEqual(fetchedEntry?.journalText, "Updated Text")
    }

    func testDeleteJournalEntry() {
        let journalEntry = Journal(context: context)
        journalEntry.date = Date()
        journalEntry.journalText = "To be deleted"

        XCTAssertNoThrow(try context.save())

        context.delete(journalEntry)
        XCTAssertNoThrow(try context.save())

        let fetchRequest: NSFetchRequest<Journal> = Journal.fetchRequest()
        let results = try? context.fetch(fetchRequest)
        XCTAssertEqual(results?.count, 0)
    }

    // MARK: TrackerEntry Entity Tests
    func testCreateTrackerEntry() {
        let trackerEntry = TrackerEntry(context: context)
        trackerEntry.date = Date()
        trackerEntry.mood = 5
        trackerEntry.activity = 7
        trackerEntry.sleep = 8
        trackerEntry.id = UUID()

        XCTAssertNoThrow(try context.save())

        let fetchRequest: NSFetchRequest<TrackerEntry> = TrackerEntry.fetchRequest()
        let results = try? context.fetch(fetchRequest)
        XCTAssertEqual(results?.count, 1)
        let fetchedEntry = results?.first
        XCTAssertEqual(fetchedEntry?.mood, 5)
    }

    func testDeleteTrackerEntry() {
        let trackerEntry = TrackerEntry(context: context)
        trackerEntry.date = Date()
        trackerEntry.mood = 5
        trackerEntry.activity = 7
        trackerEntry.sleep = 8
        trackerEntry.id = UUID()

        XCTAssertNoThrow(try context.save())

        context.delete(trackerEntry)
        XCTAssertNoThrow(try context.save())

        let fetchRequest: NSFetchRequest<TrackerEntry> = TrackerEntry.fetchRequest()
        let results = try? context.fetch(fetchRequest)
        XCTAssertEqual(results?.count, 0)
    }

    // MARK: Averages Entity Tests
    func testCreateAveragesEntry() {
        let averagesEntry = Averages(context: context)
        averagesEntry.mood = 5
        averagesEntry.activity = 7
        averagesEntry.sleep = 8

        XCTAssertNoThrow(try context.save())

        let fetchRequest: NSFetchRequest<Averages> = Averages.fetchRequest()
        let results = try? context.fetch(fetchRequest)
        XCTAssertEqual(results?.count, 1)
        let fetchedEntry = results?.first
        XCTAssertEqual(fetchedEntry?.mood, 5)
    }

    func testUpdateAveragesEntry() {
        let averagesEntry = Averages(context: context)
        averagesEntry.mood = 5
        averagesEntry.activity = 7
        averagesEntry.sleep = 8

        XCTAssertNoThrow(try context.save())

        averagesEntry.mood = 6
        averagesEntry.activity = 8
        averagesEntry.sleep = 9
        XCTAssertNoThrow(try context.save())

        let fetchRequest: NSFetchRequest<Averages> = Averages.fetchRequest()
        let results = try? context.fetch(fetchRequest)
        let fetchedEntry = results?.first
        XCTAssertEqual(fetchedEntry?.mood, 6)
        XCTAssertEqual(fetchedEntry?.activity, 8)
        XCTAssertEqual(fetchedEntry?.sleep, 9)
    }

    func testDeleteAveragesEntry() {
        let averagesEntry = Averages(context: context)
        averagesEntry.mood = 5
        averagesEntry.activity = 7
        averagesEntry.sleep = 8

        XCTAssertNoThrow(try context.save())

        context.delete(averagesEntry)
        XCTAssertNoThrow(try context.save())

        let fetchRequest: NSFetchRequest<Averages> = Averages.fetchRequest()
        let results = try? context.fetch(fetchRequest)
        XCTAssertEqual(results?.count, 0)
    }
}
