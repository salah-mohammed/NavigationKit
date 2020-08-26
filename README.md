# NavigationKit

Navigation Kit used for make threat with screen that have differents navigation bar style, make change style of bar easy.

# How used (configuration): 

- First

public class MainNavigationController: NavigationController {

    public override func viewDidLoad() {
        super.viewDidLoad()
        NavigationColorManager.sharedInstance.navigationController=self;
        // Do any additional setup after loading the view.
    }
    
}

- Second

class FirstViewController: UIViewController,NavigationInfoDelegate {
 
 var navigationColor: NavigationColorData=NavigationColorData.init(barColor: NavigationColorManager.BarColor.transparent, textColor:UIColor.black)
    
 }
 
 class SecondViewController: UIViewController,NavigationInfoDelegate {
  
  var navigationColor: NavigationColorData=NavigationColorData.init(barColor: NavigationColorManager.BarColor.customColor(UIColor.blue), textColor:UIColor.white)
    
}
# Configure Successfully

# you can refresh navigation style by 
(self.navigationController as? MainNavigationController)?.refrehNavigationInfoVisibleViewController();
