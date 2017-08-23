#if os(iOS)
  import UIKit

  class CreateAccViewController: UIViewController {
  }
  class XXPickerViewController: UIViewController {
  }
  class CustomSegueClass: UIStoryboardSegue {
  }
  class CustomSegueClass2: UIStoryboardSegue {
  }
#elseif os(OSX)
  import Cocoa

  class CustomTabViewController: NSWindowController {
  }
  class NSControllerPlaceholder: NSWindowController {
  }
#endif
