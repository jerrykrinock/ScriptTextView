# ScriptTextView

A simple macOS app for presenting a prompt and empty text view to the user and getting the user's input.  This is useful for scripts or tools which need this user interface in isolated cases.

To use this app, your script or tool should call its executable, passing one command-line argument, the prompt you wish presented to the user.  After the user clicks the "Done" button, this app will quit and return the user's input to your script or tool via stdout.

For fun, this app is written in Swift 5, so unfortunately the product size is ridiculous 12 MB, mostly due to stupid Swift libraries.
