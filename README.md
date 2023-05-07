# SwiftUI Color Hex API

This API provides extensions to SwiftUI's `Color` struct to easily create colors from hexadecimal strings or integers.

## Color Initializer from Hex String

```swift
public init(
  _ colorSpace: Color.RGBColorSpace = .sRGB,
  hexString: String
)
```

This initializer creates a `Color` instance from a hexadecimal string.

### Parameters

- `colorSpace`: The RGB color space to use for the color. Default value is `.sRGB`.
- `hexString`: A string representing the color in hexadecimal format. The string can optionally include a '#' prefix.

### Usage

```swift
let color = Color(hexString: "#FF5733")
```

## Color Initializer from Hex Integer

```swift
public init(
  _ colorSpace: Color.RGBColorSpace = .sRGB,
  hexInt: Int,
  opacity: CGFloat = 1
)
```

This initializer creates a `Color` instance from a hexadecimal integer.

### Parameters

- `colorSpace`: The RGB color space to use for the color. Default value is `.sRGB`.
- `hexInt`: An integer representing the color in hexadecimal format.
- `opacity`: The opacity of the color. Default value is 1.

### Usage

```swift
let color = Color(hexInt: 0xFF5733)
```

These extensions make it convenient to work with colors in a SwiftUI project when using hexadecimal values for color definitions.
