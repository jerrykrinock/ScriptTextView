import Cocoa

/**  Subclass of NSWindow which can become key or main even if it does not
 have a title bar.

 (According to NSWindow documentation, if a window has no title bar, its
 properties canBecomeKey and canBecomeMain return false, which means the
 user cannot type into its text fields or views.  Very frustrating!)
 */


class KeyableTitlelessWindow : NSWindow {
    override var canBecomeKey: Bool {
        return true
    }

    override var canBecomeMain: Bool {
        return true
    }

}
