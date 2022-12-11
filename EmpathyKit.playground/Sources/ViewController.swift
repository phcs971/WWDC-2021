import UIKit
import ARKit
import SceneKit

public class ViewController: UIViewController, ARSCNViewDelegate, ARSessionDelegate {
    let session = ARSession()
    
    let sceneView = ARSCNView()
    
    public func session(_ session: ARSession, didFailWithError error : Error) {
        print("<Error> Erro: \(error)")
    }
    
    public override func loadView() {
        print("<View> Load View")
        self.view = sceneView
    }
    
    public override func viewDidLoad() {
        print("<View> Did Load View")
        super.viewDidLoad()
        
        print("<View> Scene View Config")
        sceneView.delegate = self;
        sceneView.session = session;
        sceneView.session.delegate = self;
        sceneView.autoenablesDefaultLighting = true;
        
        
        print("<View> Scene Tracking Config")
        let config = ARWorldTrackingConfiguration()
        config.planeDetection = .horizontal;
        
        print("<View> Scene Run")
        sceneView.session.run(config)
        print("<View> Scene Run Complete")
    }
    
    public override func viewDidAppear(_ animated: Bool) {
        print("<View> Did Appear View")
        super.viewDidAppear(animated)
        createSphere();
    }
    
    func createSphere() {
        print("<View> Create Sphere")
        let sphere = SCNSphere(radius: 1)
        let node = SCNNode(geometry: sphere)
        sceneView.scene.rootNode.addChildNode(node)
    }
}

