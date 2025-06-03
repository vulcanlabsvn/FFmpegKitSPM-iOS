# FFmpegKitSPM

A Swift Package that wraps FFmpegKit and its related binary frameworks using `.xcframework` files for easy integration via Swift Package Manager (SPM).

## 📦 Included Frameworks

This package includes the following `.xcframework` binaries:

- ffmpegkit
- libavcodec
- libavdevice
- libavfilter
- libavformat
- libavutil
- libswresample
- libswscale

## 📁 Folder Structure
FFmpegKitSPM/
├── Package.swift
├── README.md
├── xcframeworks/
│ ├── ffmpegkit.xcframework
│ ├── libavcodec.xcframework
│ ├── libavdevice.xcframework
│ ├── libavfilter.xcframework
│ ├── libavformat.xcframework
│ ├── libavutil.xcframework
│ ├── libswresample.xcframework
│ └── libswscale.xcframework
└── Sources/
└── FFmpegWrapper/
└── dummy.swift


## ✅ Requirements

- Swift 5.6 or later
- Xcode 13 or later
- iOS 12.0+ / macOS 10.15+

## 🧩 Installation

1. Push this repository to GitHub (or another Git host).
2. In your Xcode project:
   - Go to `File > Add Packages...`
   - Enter the URL to this repository.
   - Select a version/tag (e.g., `1.0.0`)

## 📚 Usage

Import the package wherever needed:

```swift
import ffmpegkit