import Foundation

struct WorkoutPlan {
    let title: String
    let description: String
    let exercises: [String]
}

class WorkoutPlanManager {
    static func getPlan(for goal: FitnessGoal) -> WorkoutPlan {
        switch goal {
        case .bulk:
            return WorkoutPlan(title: "Bulk Plan",
                               description: "Focus on heavy lifts and compound movements.",
                               exercises: ["Squat", "Deadlift", "Bench Press"])
        case .loseWeight:
            return WorkoutPlan(title: "Lose Weight Plan",
                               description: "High intensity interval training and cardio exercises.",
                               exercises: ["Jumping Jacks", "Burpees", "Mountain Climbers"])
        case .gainMass:
            return WorkoutPlan(title: "Gain Mass Plan",
                               description: "Moderate weight with higher volume for muscle growth.",
                               exercises: ["Dumbbell Press", "Lunges", "Rows"])
        case .healthyWorkout:
            return WorkoutPlan(title: "Healthy Workout Plan",
                               description: "Balanced workout for overall fitness and wellbeing.",
                               exercises: ["Push-ups", "Sit-ups", "Plank"])
        case .endurance:
            return WorkoutPlan(title: "Endurance Plan",
                               description: "Stamina building workouts for long-duration exercise.",
                               exercises: ["Running", "Cycling", "Rowing"])
        case .flexibility:
            return WorkoutPlan(title: "Flexibility Plan",
                               description: "Improve your range of motion with stretching and yoga.",
                               exercises: ["Yoga", "Pilates", "Dynamic Stretching"])
        }
    }
}
