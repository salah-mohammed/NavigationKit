# Result

![alt text](https://github.com/salah-mohammed/NavigationKit/blob/master/NavigationKitExample/example.gif)

# NavigationKit

Navigation Kit used for make threat with screen that have differents navigation bar style, make change style of bar easy.

# How used (configuration): 

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
 
 var navigationColor: NavigationColorData=NavigationColorData.init(barColor: NavigationColorManager.BarColor.transparent, textColor:UIColor.black)
 
    public override func viewDidLoad() {
        super.viewDidLoad()
    }
 }

 class SecondViewController: UIViewController,NavigationInfoDelegate {
  
  var navigationColor: NavigationColorData=NavigationColorData.init(barColor: NavigationColorManager.BarColor.customColor(UIColor.blue), textColor:UIColor.white)
    
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
# Developer Information For Contact 

- salah.mohamed_1995@hotmail.com
- https://www.facebook.com/photo.php?fbid=1549843615080930&set=a.101503269914979&type=3&theater
