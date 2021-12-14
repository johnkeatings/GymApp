//
//  GymAppTests.swift
//  GymAppTests
//
//  Created by Chris Campanelli on 2021-12-13.
//

import XCTest
@testable import GymApp

class GymAppTests: XCTestCase {

    override func setUpWithError() throws {
        
    }

    override func tearDownWithError() throws {
        // reset user defaults
        let domain = Bundle.main.bundleIdentifier!
        UserDefaults.standard.removePersistentDomain(forName: domain)
        UserDefaults.standard.synchronize()
    }

    func testReadingAndWriting() throws {
        let dbManager = UserDefaultDatabaseManager.instance
        dbManager.saveWorkout(workout: Workout(name: "test", uuid: UUID()))
        let workouts = dbManager.getAllWorkoutsData()
        XCTAssertTrue(workouts.count == 1)
    }
}
