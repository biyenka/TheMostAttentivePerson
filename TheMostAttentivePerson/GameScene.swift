import SpriteKit
import GameplayKit

class GameScene: SKScene {

    let ball = SKSpriteNode(imageNamed: "ball")
    
    override func didMove(to view: SKView) {
        let background = SKSpriteNode(imageNamed: "bg")
        background.position = CGPoint(x: size.width/2, y: size.height/2)
        background.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        background.zPosition = -1
        addChild(background)
        
        ball.position = CGPoint(x: 810, y: 723)
        addChild(ball)
    }
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}
