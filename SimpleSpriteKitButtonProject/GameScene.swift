//
//  GameScene.swift
//  SimpleSpriteKitButtonProject
//
//  Created by Skyler Lauren on 8/20/17.
//  Copyright © 2017 SkyVan Labs. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene, SVLSpriteNodeButtonDelegate {
    
    var addPointsButton: SVLSpriteNodeButton!
    var endGameButton: SVLSpriteNodeButton!
    var scoreLabel: SKLabelNode!
    
    var score = 0
    
    override func didMove(to view: SKView) {
        
        addPointsButton = childNode(withName: "addPointsButton") as! SVLSpriteNodeButton
        addPointsButton.isUserInteractionEnabled = true
        addPointsButton.delegate = self
        
        endGameButton = childNode(withName: "endGameButton") as! SVLSpriteNodeButton
        endGameButton.isUserInteractionEnabled = true
        endGameButton.delegate = self

        scoreLabel = childNode(withName: "scoreLabel") as! SKLabelNode
    }
    
    func addToScore(){
        score += 1
        scoreLabel.text = "Score: \(score)"
    }
    
    func endGame(){
        scoreLabel.text = "You Win!"
        score = 0
    }
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
    
    //MARK: - SVLSpriteNodeButtonDelegate
    func spriteNodeButtonPressed(_ button: SVLSpriteNodeButton) {
        
        switch button {
        case addPointsButton:
            addToScore()
        case endGameButton:
            endGame()
        default:
            break
        }
        
    }
}
