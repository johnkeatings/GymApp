//
//  AppManager.swift
//  GymApp (iOS)
//
//  Created by Chris Campanelli on 2021-12-13.
//

import Foundation

class AppManager {
    static let instance = AppManager(workoutDb: UserDefaultDatabaseManager.instance)

    // public vars
    var workouts = [Workout]()
    
    // private vars
    private var workoutDbManager: WorkoutDataManager
    
    init(workoutDb: WorkoutDataManager) {
        workoutDbManager = workoutDb
        workouts = workoutDbManager.getAllWorkoutsData()
    }
}
