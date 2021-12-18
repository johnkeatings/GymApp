//
//  UserDefaultDatabase.swift
//  GymApp (iOS)
//
//  Created by Chris Campanelli on 2021-12-13.
//
//
//import Foundation
//
//protocol WorkoutDataManager {
//    func getAllWorkoutsData() -> [Workout]
//    func saveWorkout(workout: Workout)
//}
//
//class UserDefaultDatabaseManager {
//    static let instance = UserDefaultDatabaseManager()
//    private var defaults: UserDefaults!
//    private let workoutStorageKey = "workoutStorageKey"
//
//    init(userDefaults: UserDefaults = UserDefaults.standard) {
//        defaults = userDefaults
//    }
//
//    func deleteAllData() {
//        let domain = Bundle.main.bundleIdentifier!
//        UserDefaults.standard.removePersistentDomain(forName: domain)
//        UserDefaults.standard.synchronize()
//    }
//}
//
//extension UserDefaultDatabaseManager: WorkoutDataManager {
//    func getAllWorkoutsData() -> [Workout] {
//        if let loadedData = defaults.data(forKey: workoutStorageKey),
//            let workouts = NSKeyedUnarchiver.unarchiveObject(with: loadedData) as? [Workout] {
//            return workouts
//        }
//        return [Workout]()
//    }
//
//    func saveWorkout(workout: Workout) {
//        var workouts = getAllWorkoutsData()
//        workouts.append(workout)
//
//        //store you class object into NSUserDefaults.
//        let workoutsData = NSKeyedArchiver.archivedData(withRootObject: workouts)
//        defaults.set(workoutsData, forKey: workoutStorageKey)
//    }
//
//
//}
//
