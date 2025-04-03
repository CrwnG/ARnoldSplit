import SwiftUI

struct ContentView: View {
    @State private var weight: String = ""
    @State private var height: String = ""
    @State private var selectedGoal: FitnessGoal = .healthyWorkout
    @State private var showAR: Bool = false
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Your Profile")) {
                    TextField("Weight (kg)", text: $weight)
                        .keyboardType(.decimalPad)
                    TextField("Height (cm)", text: $height)
                        .keyboardType(.decimalPad)
                }
                
                Section(header: Text("Select Your Fitness Goal")) {
                    Picker("Goal", selection: $selectedGoal) {
                        ForEach(FitnessGoal.allCases) { goal in
                            Text(goal.rawValue).tag(goal)
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                }
                
                Section(header: Text("Your Workout Plan")) {
                    let plan = WorkoutPlanManager.getPlan(for: selectedGoal)
                    Text(plan.title)
                        .font(.headline)
                    Text(plan.description)
                    ForEach(plan.exercises, id: \.self) { exercise in
                        Text("• \(exercise)")
                    }
                }
                
                Section {
                    Button(action: {
                        showAR = true
                    }) {
                        Text("How to do it (AR)")
                    }
                }
            }
            .navigationTitle("ARnold Split")
            .sheet(isPresented: $showAR) {
                ARDemoView()
                    .edgesIgnoringSafeArea(.all)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
