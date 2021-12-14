//
//  WorkoutView.swift
//  GymApp
//
//  Created by John Keatings on 2021-12-13.
//

import SwiftUI

struct WorkoutView: View {
   
    @State private var nameOfWorkout = ""
    @State private var workoutDescription = ""
    
    var body: some View {
        VStack(spacing: 30) {
            
            TextField("Workout Title", text: $nameOfWorkout)
                .frame(width: 300, height: 50)
                .border(Color.gray)
                .multilineTextAlignment(TextAlignment.center)
                .cornerRadius(3)
            
            TextField("Description", text: $workoutDescription)
                .frame(width: 300, height: 50)
                .border(Color.gray)
                .multilineTextAlignment(TextAlignment.center)
                .cornerRadius(3)
            
            NavigationLink(destination: ExerciseView(), label: {
                Text("Next")
                    .bold()
                    .frame(width: 200, height: 50)
                    .background(Color.orange)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            })
        }
    }
}

struct WorkoutView_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutView()
    }
}
