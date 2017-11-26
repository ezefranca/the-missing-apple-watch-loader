# The missing apple watch loader
Because is so hard to provide this.

![](https://media.giphy.com/media/l4Ep3igr1qTS1dkxa/giphy.gif)

# 🐧

```swift
    @IBOutlet var loader: WKInterfaceImage!
    
    func showLoader() {
        loader.setImageNamed("loader")
        loader.startAnimatingWithImages(in: NSRange(location: 1,
                                                    length: 8), duration: 0.8, repeatCount: -1)
    }
    
    func stopLoader() {
        self.loader.stopAnimating()
    }
    
```

The image name ```loader``` :

![](folder.png)
