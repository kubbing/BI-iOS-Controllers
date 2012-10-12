# `AppDelegate` - `application:didfinishLaunchingWithOptions:`

1. ze storyboardu vytahneme 3 viewControllery, `{first, second, third}ViewController`
2. v kodu manualne vytvorime `UITabBarController` (ten spodni prepinak)
3. `tabBarControlleru` nastavime 3 taby (`controller {1, 2, 3}`)
4. do hlavniho `UIWindow` (`self.window`) pridame ten `tabBarController`
5. …
6. profit!

# WebViewController

1. ve storyboardu je `UIWebView` propojeny na outlet v `WebViewController`
2. ve `viewDidLoad` dame `self.webView` nacist request

# GalleryViewController

1. ve storyBoardu je `UIScrollView` propojeny na outlet
2. vyrobime 3x `UIImage`
3. vyrobime 3x `UIImageView` a pridame so `self.scrollView`
4. nastavime kazdemu `UIImageView` frame
5. nastavime `self.scrollView` `contentSize` na celkovou velikost, v nasem pripade velikost 3 obrazovek

# 3. tab v `tabBarController`

- `UINavigationController`, ktery zajistuje tu navigacni listu nahore
- jeho `rootViewController` je `ContentViewController` 
- jednotlive controllery v `UINavigationController` zajistuji obsah, nastavuji obsah horni listy

vice priste :)
