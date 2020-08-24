# Botter Mobile SDK!

Hello Here is a brief guide to integrate with botter mobile SDK

# Example

To run the example project, clone the repo, and run   ``` pod install ```   from the Example directory first.


# Installation

**Steps**
1- Botter  is available through CocoaPods. To install it, simply add the following line to your Podfile:
```swift
pod 'Botter' , :git = 'https://github.com/NoraSayed135/Botter.git'
```

2- Customize your app to allow multiple window in case you want to show floating button on to of your entire app /*if not skip  this*/ to this follow this steps

> 1 - remove _Scene Manifest_ from info.plist file 
> 2- comment scene configuration functions in App delegate 
>3-  add this line in App Delegate class :

 ```swift
 var  window: UIWindow?
 ```

3- Add Camera and Gallery Permissions in your info.plist file

```html
<key>NSCameraUsageDescription</key>
<string>This app requires to access your photo library to send image via chat</string>
<key>NSPhotoLibraryUsageDescription</key>
<string>This app requires to access your photo library to send image via chat</string>
```
4- In your project's capabilities, enable both the iCloud and the Key-Sharing.


## Implementation


Botter SDK provide the option of showing launcher button throughout entire app 

```swift
 import Botter

 @UIApplicationMain
 class AppDelegate: UIResponder, UIApplicationDelegate {
     var window: UIWindow?

     func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) - Bool {
         Botter.show(APIKey: "nKmovPCdWNZ")

         return true
     }
```


 you trigger open chat action on your custom button

```swift
@IBAction func openChat(){
  
       Botter.openChatScreen(APIKey: "nKmovPCdWNZ")
   }

```


 you can hide launcher button in certain controllers to do so we have two ways 

  make the controller where we want to hide the button inhirit from **BotterControllerWithHiddenLauncher** 
 ```swift
import Botter

class HiddenLauncherViewController: BotterControllerWithHiddenLauncher {
 
 }
 
 ```

 or

 call these two functions whenever we want to show/hide launcher button 

 **Botter.hideLauncherButton()**

 **Botter.showLauncherButton()**

 ```swift
open override func viewWillAppear(_ animated: Bool) {
       super.viewWillAppear(animated)
       Botter.hideLauncherButton()
   }
 ```
```swift
 open override func viewDidDisappear(_ animated: Bool) {
       super.viewDidDisappear(animated)
       Botter.showLauncherButton()
   }
```

## Customization

**Change Launcher Position** 

 to change launcher Position you can set bottom margin calling this:
```swift
BotterSettingsManager.bottomMargin = 40
```

**Change Title Text** 

 to change title text you can set it calling this :

```swift
BotterSettingsManager.ChatTitleText = "Botter"
```

