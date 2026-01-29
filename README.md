# Result

![alt text](https://github.com/salah-mohammed/NavigationKit/blob/master/NavigationKitExample/example.gif)

# NavigationKit

 NavigationKit, makes managing screens with different navigation bar styles simple, allows easy style changes and ensures code behavior is explicit without running the app.

# Advantages
* set Background Image for navigation bar and title color for every single screen.
* set color for navigation bar and their title for every single screen.
* Hide navigation bar feature for every single screen.
* can make navigation bar color transparent for every single screen.
* can set default navigation bar style if Viewcontroller not implement NavigationDelegate will take this default style.


# Requirements
* IOS 13+ 
* Swift 5+

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
        // Do any additional setup after loading the view.
    }
    
}
```
- Second

if you want set Navigation bar transparent and change title color .
```swift
class FirstViewController: UIViewController,NavigationDelegate {
 
   var style=Navigation.Style.init(Navigation.Style.custom(.all(AppStyle.transparentBarStyle),UIColor.black))
    
    public override func viewDidLoad() {
        super.viewDidLoad()
    }
 }

 ```
 
 if you want to set Navigation bar color and set title color for it.
 
 ```swift

  class SecondViewController: UIViewController,NavigationDelegate {
  
  var style=Navigation.Style.init(Navigation.Style.custom(.all(AppStyle.greenBarStyle),UIColor.white))
    
        public override func viewDidLoad() {
        super.viewDidLoad()
    }
}
```
if you want to hide Navigation bar.

 ```swift
 class ThiredViewController: UIViewController,NavigationDelegate {

    var style=Navigation.Style.init(Navigation.Style.hide);
    
        public override func viewDidLoad() {
        super.viewDidLoad()
    }
}
 ```

if you want to set background image for Navigation bar and set title color for it.

 ```swift
 class ForthViewController: UIViewController,NavigationDelegate {

    var style=Navigation.Style.init(Navigation.Style.custom(.all(AppStyle.backgroundImageBarStyle),UIColor.white))
    
        public override func viewDidLoad() {
        super.viewDidLoad()
    }
}
 ```
- Thired

if you want to set default style 'if Viewcontroller not implement NavigationInfoDelegate'
```swift
Navigation.shared.defaultStyle = Navigation.Style.custom(.all(AppStyle.yelloBarStyle),UIColor.white)

 ```
# Configure Successfully

# You can refresh navigation style by 
```swift
self.navigationController?.refrehStyle();
 ```
## License

NavigationKit is released under the MIT license. [See LICENSE](https://github.com/salah-mohammed/NavigationKit/blob/master/LICENSE) for details.

# Developer's information to communicate

- salahalimohamed1995@gmail.com
- https://www.facebook.com/salah.shaker.7
- +972597105861 (whatsApp And PhoneNumber)
- https://www.linkedin.com/in/salah-mohamed-676b6a17a (Linkedin)

