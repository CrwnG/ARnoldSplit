import SwiftUI
import RealityKit
import ARKit

struct ARDemoView: UIViewRepresentable {
    func makeUIView(context: Context) -> ARView {
        let arView = ARView(frame: .zero)
        
        // Configure AR session
        let configuration = ARWorldTrackingConfiguration()
        configuration.planeDetection = [.horizontal]
        arView.session.run(configuration)
        
        // Create a simple box for demonstration purposes
        let boxMesh = MeshResource.generateBox(size: 0.2)
        let material = SimpleMaterial(color: .blue, isMetallic: false)
        let boxEntity = ModelEntity(mesh: boxMesh, materials: [material])
        
        // Anchor the box on a horizontal plane
        let anchorEntity = AnchorEntity(plane: .horizontal)
        anchorEntity.addChild(boxEntity)
        arView.scene.addAnchor(anchorEntity)
        
        return arView
    }
    
    func updateUIView(_ uiView: ARView, context: Context) {}
}
