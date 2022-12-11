//: A SpriteKit based Playground

import PlaygroundSupport
import SpriteKit
import SceneKit
import ARKit

print("<Main> Start")
let viewController = ViewController();

//print("<Main> View Controller Created")
PlaygroundSupport.PlaygroundPage.current.liveView = viewController;
PlaygroundPage.current.needsIndefiniteExecution = true;
