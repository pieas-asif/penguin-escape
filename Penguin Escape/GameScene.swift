import SpriteKit


class GameScene: SKScene {
    override func didMove(to view: SKView) {
        let mySprite = SKSpriteNode(color: UIColor.blue, size: CGSize(width: 50, height: 50))
        mySprite.position = CGPoint(x: 300, y: 300)
        self.addChild(mySprite)
        let demoAction1 = SKAction.scale(by: 4, duration: 5)
        let demoAction2 = SKAction.rotate(byAngle: 5, duration: 5)
        let demoAction4 = SKAction.scaleX(to: 8, duration: 5)
        let demoAction3 = SKAction.moveBy(x: 100, y: 50, duration: 3)
        
        let actionGroup = SKAction.group([demoAction4, demoAction2]);
        let actionSequence = SKAction.sequence([demoAction1, actionGroup, demoAction3])
        mySprite.run(actionSequence)
    }
}
