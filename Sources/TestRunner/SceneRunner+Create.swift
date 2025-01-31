import Foundation
#if canImport(XCTest)
import XCTest

// Extending SceneRunner to include testing functionalities
extension SceneRunner {
   /**
    * This function is very convenient when testing scenes. It creates only one reference to the app, 
    * which is necessary for the tests to work correctly.
    * 
    * - Remark: Every call to `XCUIApplication` creates a new instance of this object. This is why the `XCUIApplication` 
    * object is created at the beginning of the test and stored in the `app` variable. This ensures that we are working 
    * with the same instance throughout the test.
    * 
    * - Remark: Anywhere in the app we can also access this and other apps by knowing their bundle id. For example, 
    * we can access the springboard app using its bundle id: private static `let springboardApp = XCUIApplication(bundleIdentifier: "com.apple.springboard")`
    */
   @objc open func createXCUIApp() -> XCUIApplication {
      // This function creates a new instance of XCUIApplication, launches it, and returns it.
      let app = XCUIApplication()
      app.launch()
      return app
   }
}
// - Fixme: ⚠️️ We could enhance this by launching the app with a specific bundleID. 
// For example, to launch the mobile safari app, we could use its bundle id like this:
// app = XCUIApplication(bundleIdentifier: "com.apple.mobilesafari")
// app.launch()
#endif