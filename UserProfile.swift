import Foundation

enum FitnessGoal: String, CaseIterable, Identifiable {
    case bulk = "Bulk"
    case loseWeight = "Lose Weight"
    case gainMass = "Gain Mass"
    case healthyWorkout = "Healthy Workout"
    case endurance = "Endurance"
    case flexibility = "Flexibility"
    
    var id: String { self.rawValue }
}

struct UserProfile {
    var weight: Double
    var height: Double
    var goal: FitnessGoal
}
