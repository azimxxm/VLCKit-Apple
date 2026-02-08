# VLCKit-Apple

A unified Swift Package for integrating VLCKit into your Apple platform projects (iOS, tvOS, macOS).

This package simplifies the integration process by automatically selecting the correct binary framework based on the target platform:
- 📱 **iOS**: `MobileVLCKit`
- 📺 **tvOS**: `TVVLCKit`
- 💻 **macOS**: `VLCKit`

## Installation

### Swift Package Manager (SPM)

1.  Open your project in Xcode.
2.  Go to **File > Add Packages...**.
3.  Click heavily **Add Local...** at the bottom of the window.
4.  Navigate to and select the `VLCKit-Apple` folder.
5.  Click **Add Package**.
6.  Select the `VLCKitApple` library to link with your target.

### Carthage (Alternative)

If you prefer using Carthage, you can integrate the binaries directly from the official VideoLAN repositories. Add the following line to your `Cartfile` depending on your target platform:

**iOS:**
```ogdl
binary "https://code.videolan.org/videolan/VLCKit/raw/master/Packaging/MobileVLCKit.json" ~> 3.3.0
```

**macOS:**
```ogdl
binary "https://code.videolan.org/videolan/VLCKit/raw/master/Packaging/VLCKit.json" ~> 3.3.0
```

**tvOS:**
```ogdl
binary "https://code.videolan.org/videolan/VLCKit/raw/master/Packaging/TVVLCKit.json" ~> 3.3.0
```

## Usage

Simply import the package in your Swift files. The correct underlying framework will be available automatically.

```swift
import VLCKitApple

// Example Usage
func setupPlayer() {
    let player = VLCMediaPlayer()
    player.libraryInstance.debugLogging = true
    // ... configure your player
}
```

## Features
- **Zero Configuration**: No need to manually link different frameworks for different targets.
- **Offline Ready**: Includes stripped, optimized binaries directly within the package (approx. 300MB total).
- **Universal Support**: Works seamlessly on physical devices (arm64) and simulators (x86_64, arm64).

## License

VLCKit is licensed under the LGPLv2.1 or later. See the `COPYING.txt` file inside each binary framework folder for details.
