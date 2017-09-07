#if os(iOS)
  import UIKit

  public enum CustomSegue {
  	public class SlideDownSegue: UIStoryboardSegue {
	}
  }
#elseif os(OSX)
  import Cocoa

  public enum FadeSegue {
  	public class SlowFadeSegue: NSStoryboardSegue {
  	}
  }
#endif
