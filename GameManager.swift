import Foundation
import SpriteKit

class GameManager {
    var playerModes: [PlayerMode]
    var currentMode: PlayerMode?

    init() {
        playerModes = [ObstacleCourseMode()]
        startMode(modeName: "ObstacleCourseMode")
    }

    func startMode(modeName: String) {
        currentMode = playerModes.first { $0.getName() == modeName }
        currentMode?.startMode()
    }
}

protocol PlayerMode {
    func getName() -> String
    func startMode()
}

class ObstacleCourseMode: PlayerMode {
    func getName() -> String {
        return "ObstacleCourseMode"
    }

    func startMode() {
        print("Starting Obstacle Course Mode...")
        // Implement the obstacle course logic here
        // Create obstacles and place weapons and ammunition
    }
}