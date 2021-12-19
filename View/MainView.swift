//
//  ContentView.swift
//  Shared
//
//  Created by John Keatings on 2021-12-13.
//

import SwiftUI

struct MainView: View {
//    let workouts = AppManager.instance.workouts
    var workouts = ["Workout 1", "Workout 2", "Workout 3", "Workout 4"]
    var body: some View {
        NavigationView {
            VStack {
                List(workouts, id: \.self) {
                        Text($0)
                            .bold()
                        Text("Description")
                            .italic()
                }
                NavigationLink(destination: WorkoutView(), label: {
                    Text("Add Workout")
                        .bold()
                        .frame(width: 200, height: 50)
                        .background(Color.orange)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                })
            }
            .navigationTitle("My Workouts")
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

