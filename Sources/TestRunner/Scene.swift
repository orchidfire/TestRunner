import Foundation
/**
 * - Remark: A scene is a part of a sequence
 * - Remark: A sequence has many scenes
 * - Remark: A scene can have many steps
 * ## Examples:
 * Sequence([Scene([Step(), Step(), Step()])])
 */
open class Scene: SceneKind {
   public var sceneRunner: SceneRunnerKind
   /**
    * - Parameter scenerunner: A reference to the "sequencer" of the scenes
    */
   public required init(sceneRunner: SceneRunnerKind) {
      self.sceneRunner = sceneRunner
   }
   /**
    * Run the scene
    * - Fixme: ⚠️️ Maybe add throws? so we can log errors etc?
    */
   open func run() {
      fatalError("Must be implemented by super-type")
   }
}
