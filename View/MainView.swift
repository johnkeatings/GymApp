//
//  ContentView.swift
//  Shared
//
//  Created by John Keatings on 2021-12-13.
//

import SwiftUI

struct MainView: View {
    let workouts = AppManager.instance.workouts
    var body: some View {
        NavigationView {
            VStack(spacing: 50) {
                Section {
                    NavigationLink(destination: WorkoutView(), label: {
                        Text("Add Workout")
                            .bold()
                            .frame(width: 140, height: 50)
                            .background(Color.orange)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    })
                    VStack {
                        Section {
                            Text("Leg Workout")
                                .font(.largeTitle)
                                .bold()
                            Image("deadlift")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                            Text("Workout One")
                        }
                        .padding(10)
                    }
                    .frame(width: 370, height: 420)
                    .background(Color.white)
                    .cornerRadius(20)
                    .shadow(radius: 20)

                }
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

