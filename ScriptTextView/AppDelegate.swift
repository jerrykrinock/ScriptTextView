import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!
    @IBOutlet weak var textView: NSTextView!
    @IBOutlet weak var promptField: NSTextField!

    @IBAction func done(_ sender: Any) {
        /* Return user's input to stdout */
        print(textView.string)
        NSApplication.shared.terminate(self)
    }

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        let arguments = ProcessInfo.processInfo.arguments
        if (arguments.count > 1) {
            self.promptField.stringValue = arguments[1]
        } else {
            self.promptField.stringValue = "Caller did not provide a prompt as argument to executable"
        }

        NSApplication.shared.activate(ignoringOtherApps: true)
        window.makeKeyAndOrderFront(self)
    }

}

