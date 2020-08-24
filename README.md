<img src="https://raw.githubusercontent.com/botter-live/botter.live-IOS/master/.github/images/ic_botter.png" alt="Botter">

## Onboard, retain and support mobile users at scale
Engage customers with in‑app messages and support them with an integrated knowledge base and help desk.

## The Botter Messenger
The [Botter Messenger](https://botter.ai/) enables you to use it like a Messenger in your app, have conversations with your customers, send rich outbound messages, and track events.
The Botter SDK is the home for the conversations your customers have with you, and the place where they can self-serve for support or to learn more about your product.
You can open Botter from a persistent button that sits over your app’s UI, From there, your customer can  start a conversation, replies in both directions happen in real time.

## Sceenshots
<p float="left">
<img src="https://raw.githubusercontent.com/botter-live/botter.live-IOS/master/.github/images/sample_black.png" width="200" alt="sample1">
<img src="https://raw.githubusercontent.com/botter-live/botter.live-IOS/master/.github/images/sample_blue.png" width="200" alt="sample2">
<img src="https://raw.githubusercontent.com/botter-live/botter.live-IOS/master/.github/images/sample_orange.png" width="200" alt="sample3">
<img src="https://raw.githubusercontent.com/botter-live/botter.live-IOS/master/.github/images/sample_green.png" width="200" alt="sample4">
</p>


## Installation
Install Botter to see and talk to users of your IOS app, Botter for IOS supports from target 11 and above.

<li>Add the below line in <strong>podfile</strong></li>

```
pod Botter
```

## Integration

<p>First, you need <strong>import Botter</strong> in your App delegate.then, you'll need to get your Botter Android API key.
  To find this, just contact our support team to get you one. Then, initialize Botter by calling the following in the <strong>didFinishLaunchingWithOptions</strong> method of your AppDelegate class</p>
  
```
Botter.show(APIKey: "your API key")
```

## Supported integration languages
<li> Swift. </li>

## Current supported bot languages
<li> English </li>
<li> Arabic </li>


## Customer support

👋 Contact us with any integration/issues at [Botter - Contact us page](https://botter.ai/contact/). If you bump into any problems or need more support, just start a conversation with our support team.

## Customizations
if you want anytime at any screen hide the Botter chat icon, just write the below line inside <strong>viewWillAppear</strong> method : 

```
Botter.hideLauncherButton()
```

and you can show it anytime using the below line at <strong>viewWillAppear</strong> also :

```
Botter.showLauncherButton()
```

You can also change bottom margin of the launcher button using : 

```
BotterSettingsManager.bottomMargin  = 40
```

If you have your custom button , and want to show chat screen directly then you can use the below line:

```
Botter.openChatScreen(APIKey: "Your Api key")
```

You can customize Botter with your preferred settings, when you initialize Botter instance inside <strong>didFinishLaunchingWithOptions</strong> method of your AppDelegate class like below : 

```
BotterSettingsManager.AccentColor = UIColor.init(codeString: "#72962C")
BotterSettingsManager.FontColor = UIColor.white
BotterSettingsManager.BotterMessageFontColor = UIColor.black
BotterSettingsManager.BotterMessageBGColor  = UIColor.init(codeString: "")
BotterSettingsManager.ChatTitleColor = UIColor.white
BotterSettingsManager.ChatTitleText  = "Botter"
BotterSettingsManager.HeadlineMessage  = "Chat with BOTTER"
BotterSettingsManager.WelcomeMessage  = "We’re here to answer your questions.\nAsk us anything!"
BotterSettingsManager.alignLauncherLeft = false
BotterSettingsManager.bottomMargin  = 40
BotterSettingsManager.Font.regularFontName = "Roboto-Regular"
BotterSettingsManager.Font.mediumFontName = "Roboto-Medium"
BotterSettingsManager.Font.boldFontName = "Roboto-Bold"
BotterSettingsManager.hasFAQs = false
BotterSettingsManager.logo = UIImage()
BotterSettingsManager.language  = .english
```

## Customization parameters table:
| Name  | Description | Screenshot |
| ------------- | ------------- | ------------- |
| BotterSettingsManager.alignLauncherLeft | To set the launcher to the true/false | 
| BotterSettingsManager.language | To set the default bot language either .english/.arabic. | 
| setLauncherIcon | To change the launcher icon. | <img src="https://raw.githubusercontent.com/botter-live/botter.live-IOS/master/.github/images/1.jpg" alt="1">|
| BotterSettingsManager.logo | To set the chat main logo. | <img src="https://raw.githubusercontent.com/botter-live/botter.live-IOS/master/.github/images/2.jpg" alt="2">|
| BotterSettingsManager.AccentColor | This is the main color used all over the chat like launcher bg color, welcome screen top area bg color, chat header, ect… I.e. in the image accent color is purple. | <img src="https://raw.githubusercontent.com/botter-live/botter.live-IOS/master/.github/images/main_color.jpg" alt="main_color">|
| BotterSettingsManager.HeadlineMessage ,  BotterSettingsManager.ChatTitleColor | Used to set the welcome screen header title text and color. | <img src="https://raw.githubusercontent.com/botter-live/botter.live-IOS/master/.github/images/4.jpg" alt="4">|
| BotterSettingsManager.WelcomeMessage | Used to set the welcome screen header subtitle text. | <img src="https://raw.githubusercontent.com/botter-live/botter.live-IOS/master/.github/images/3.jpg" alt="3">|
|BotterSettingsManager.ChatTitleText , BotterSettingsManager.ChatTitleColor | Used to set the main chat header title text and color | <img src="https://raw.githubusercontent.com/botter-live/botter.live-IOS/master/.github/images/6.jpg" alt="6">|
| BotterSettingsManager.BotterMessageBGColor , BotterSettingsManager.BotterMessageFontColor | Used to set the botter message bubble bg color and it’s text color. | <img src="https://raw.githubusercontent.com/botter-live/botter.live-IOS/master/.github/images/7.jpg" alt="7">
| BotterSettingsManager.Font.regularFontName | Used to set the primary font all over the chat. |
| BotterSettingsManager.Font.boldFontName | Used to set the secondary font all over the chat. |



# Licence 
Licensed under the Apache License, Version 2.0 (the "License"); you may not use this work except in compliance with the License. You may obtain a copy of at:
<a href='https://opensource.org/licenses/apache2.0.php'>https://opensource.org/licenses/apache2.0.php</a>


### Thank you 
