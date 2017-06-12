# DB6

![License](https://img.shields.io/badge/License-MIT-lightgrey.svg)
![Platform](https://img.shields.io/badge/Platforms-iOS-red.svg)
![Swift 3.x](https://img.shields.io/badge/Swift-3.x-blue.svg) 
[![Blog](https://img.shields.io/badge/Blog-jeksys.github.io-blue.svg)](https://jeksys.github.io/)
![MadeWithLove](https://img.shields.io/badge/Made%20with%20%E2%9D%A4-Canada-red.svg)

App Configuration via Plist, inspired by original DB5 library and https://github.com/tombenner/nui

by Eugene(https://jeksys.github.io/)

## Usage

##### 1. Create Plist
Add plist file to your project or copy a demo file from the demo project.

##### 2. Define your plist keys
Add keys and values to your plist file


## How it works

#### Initialize theme manager

```swift
var themeLoader = DB6ThemeLoader(themeFilename: "DB6Demo")
var theme = DB6Theme.default
```

#### Read primitive values

```swift
let stringKey = "string"
let stringValue = theme?.string(key: stringKey)

let key="integer"
let value = theme?.integer(key: key)


let key="float"
let value = theme?.float(key: key)


let key="double"
let value = theme?.double(key: key)


let key="boolean"
let value = theme?.bool(key: key)


let key = "colorHex"
let value = theme?.color(key: key)
```

#### Read values by reference

The theme manager allows you to read not only values from the plist file, but also use references for another values. A reference starts with @ symbol. If the there is not such key in the dictionary the reference string will be returned. 


#### Style your UI controls. 

You can style your UI controls with a dictionary in plist file. See the demo project. 

You add multiple styles in the Interface Builder. There is "style" custom  attribute. 
Or you can do it programmatically. 


```swift
let style = "loginbutton"
let button = UIButton()

theme.update(button: button, key: style)
```


## Demo App
You can find a demo app, which explain how the library works via some sample code and unit tests.


## Installation

### Carthage - not available yet
`DB6` is available through [Carthage](https://github.com/Carthage/Carthage). To install it, simply add the following line to your Cartfile:

```ruby
github "jeksys/DB6"
```

### CocoaPods - not available yet

`DB6` is available on CocoaPods.
Add the following to your `Podfile`:

```ruby
pod 'DB6'
```

### Manually
Just add the Classes folder to your project.


## License

DB6 is available under the MIT license. See the LICENSE file for details.


## TODO 

- [x] Add variables
- [x] Add support for native plist types (Number, Boolean, Date)
- [ ] Add support for plist dictionaries
- [ ] Add support for plist arrays
- [ ] Add Cocoa pod support
- [ ] Add Swift package manager support
- [ ] Add Carthage support
- [ ] Add theme switcher
- [ ] Add more UI components
