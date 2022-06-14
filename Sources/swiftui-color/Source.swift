import SwiftUI
import Foundation

extension SwiftUI.Color {
  
  /// Constructing color from hex string
  ///
  /// - Parameter hex: A hex string, can either contain # or not
  public init(
    _ colorSpace: Color.RGBColorSpace = .sRGB,
    hexString: String,
    _dummy_colorLiteral: UIColor? = nil
  ) {
    var hex =
    hexString.hasPrefix("#")
    ? String(hexString.dropFirst())
    : hexString
    guard hex.count == 3 || hex.count == 6
    else {
      self = .init(colorSpace, white: 1.0, opacity: 0)
      return
    }
    if hex.count == 3 {
      for (index, char) in hex.enumerated() {
        hex.insert(char, at: hex.index(hex.startIndex, offsetBy: index * 2))
      }
    }
    guard let intCode = Int(hex, radix: 16) else {
      self = .init(colorSpace, white: 1.0, opacity: 0)
      return
    }
    
    self = .init(
      colorSpace,
      red: Double((intCode >> 16) & 0xFF) / 255.0,
      green: Double((intCode >> 8) & 0xFF) / 255.0,
      blue: Double((intCode) & 0xFF) / 255.0,
      opacity: 1.0
    )
  }
  
  /// Creates an instance of UIColor that uses P3 color space.
  ///
  /// - Parameters:
  ///   - sample: You can put the color literal to visualize color. Actually this parameter won't be used anywhere.
  public init(
    _ colorSpace: Color.RGBColorSpace = .sRGB,
    hexInt: Int,
    opacity: CGFloat = 1,
    _dummy_colorLiteral: UIColor? = nil
  ) {
    
    self = .init(
      colorSpace,
      red: Double((hexInt & 0x00FF_0000) >> 16) / 255,
      green: Double((hexInt & 0x0000_FF00) >> 8) / 255,
      blue: Double((hexInt & 0x0000_00FF) >> 0) / 255,
      opacity: opacity
    )
    
  }
  
}
