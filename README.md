# Result

![alt text](https://github.com/salah-mohammed/NavigationKit/blob/master/NavigationKitExample/example.gif)

# NavigationKit

Navigation Kit used for make threat with screen that have differents navigation bar style, make change style of bar easy.
# Advantages
* set Background Image for navigation bar and title color for every single screen.
* set color for navigation bar and their title for every single screen.
* Hide navigation bar feature for every single screen.
* can make navigation bar color transparent for every single screen.
* can set default navigation bar style if Viewcontroller not implement NavigationInfoDelegate will take this default style.

# How used (configuration): 
# Pod install
```ruby
pod 'NavigationKit',:git => "https://github.com/salah-mohammed/NavigationKit.git"
 
```
- First

```swift
public class MainNavigationController: NavigationController {

    public override func viewDidLoad() {
        super.viewDidLoad()
        NavigationColorManager.sharedInstance.navigationController=self;
        // Do any additional setup after loading the view.
    }
    
}
```
- Second
```swift
class FirstViewController: UIViewController,NavigationInfoDelegate {
 
    var navigationColor: NavigationColorData=NavigationColorData.init(hideNavigation: NavigationColorManager.HideNavigation.customColor(NavigationColorManager.BarColor.transparent, UIColor.black))
    
    public override func viewDidLoad() {
        super.viewDidLoad()
    }
 }

 class SecondViewController: UIViewController,NavigationInfoDelegate {
  
    var navigationColor: NavigationColorData=NavigationColorData.init(hideNavigation: NavigationColorManager.HideNavigation.customColor( NavigationColorManager.BarColor.customColor(UIColor.blue), UIColor.white))
    
        public override func viewDidLoad() {
        super.viewDidLoad()
    }
}
 ```

- Thired

 ```swift
 class SecondViewController: UIViewController,NavigationInfoDelegate {

    var navigationColor: NavigationColorData=NavigationColorData.init(hideNavigation: NavigationColorManager.HideNavigation.hide);
    
        public override func viewDidLoad() {
        super.viewDidLoad()
    }
}
 ```

- Forth

 ```swift
 class SecondViewController: UIViewController,NavigationInfoDelegate {

    var navigationColor: NavigationColorData=NavigationColorData.init(hideNavigation: NavigationColorManager.HideNavigation.customColor(NavigationColorManager.BarColor.backgroundImage(UIImage.init(named:"navigationImage")!), UIColor.white))
    
        public override func viewDidLoad() {
        super.viewDidLoad()
    }
}
 ```

# Configure Successfully

# You can refresh navigation style by 
```swift
(self.navigationController as? MainNavigationController)?.refrehNavigationInfoVisibleViewController();
 ```
# Developer's information to communicate

- salah.mohamed_1995@hotmail.com
- https://www.facebook.com/salah.shaker.7
