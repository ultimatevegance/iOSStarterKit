//
//  CEMKit+UIFont.swift
//
//
//  Created by Cem Olcay on 12/08/15.
//
//

#if os(iOS) || os(tvOS)

import UIKit

/// EZSwiftExtensions
public enum FontType: String {
    case None = ""
    case Regular = "Regular"
    case Bold = "Bold"
    case DemiBold = "DemiBold"
    case Light = "Light"
    case UltraLight = "UltraLight"
    case Italic = "Italic"
    case Thin = "Thin"
    case Book = "Book"
    case Roman = "Roman"
    case Medium = "Medium"
    case MediumItalic = "MediumItalic"
    case CondensedMedium = "CondensedMedium"
    case CondensedExtraBold = "CondensedExtraBold"
    case SemiBold = "SemiBold"
    case BoldItalic = "BoldItalic"
    case Heavy = "Heavy"
}

/// EZSwiftExtensions
public enum FontName: String {
    case HelveticaNeue
    case Helvetica
    case Futura
    case Menlo
    case Avenir
    case AvenirNext
    case Didot
    case AmericanTypewriter
    case Baskerville
    case Geneva
    case GillSans
    case SanFranciscoDisplay
    case Seravek
    case PingFangSC
}

extension UIFont {

    /// EZSwiftExtensions
    public class func Font(_ name: FontName, type: FontType, size: CGFloat) -> UIFont! {
      //Using type
      let fontName = name.rawValue + "-" + type.rawValue
      if let font = UIFont(name: fontName, size: size) {
          return font
      }

      //That font doens't have that type, try .None
      let fontNameNone = name.rawValue
      if let font = UIFont(name: fontNameNone, size: size) {
          return font
      }

      //That font doens't have that type, try .Regular
      let fontNameRegular = name.rawValue + "-" + "Regular"
      if let font = UIFont(name: fontNameRegular, size: size) {
          return font
      }

      return nil
    }

    /// HelveticaNeue
    public class func HelveticaNeue(type: FontType, size: CGFloat) -> UIFont {
        return Font(.HelveticaNeue, type: type, size: size)
    }

    /// AvenirNext
    public class func AvenirNext(type: FontType, size: CGFloat) -> UIFont {
        return Font(.AvenirNext, type: type, size: size)
    }

    /// AvenirNextDemiBold
    public class func AvenirNextDemiBold(size: CGFloat) -> UIFont {
        return Font(.AvenirNext, type: .DemiBold, size: size)
    }

    /// AvenirNextRegular
    public class func AvenirNextRegular(size: CGFloat) -> UIFont {
        return Font(.AvenirNext, type: .Regular, size: size)
    }
    
    /// PingFangSCRegular
    public class func PingFangSCRegular(size: CGFloat) -> UIFont {
        return Font(.PingFangSC, type: .Regular, size: size)
    }
    
    /// PingFangSCMedium
    public class func PingFangSCMedium(size: CGFloat) -> UIFont {
        return Font(.PingFangSC, type: .Medium, size: size)
    }
    
    /// PingFangSCSemiBold
    public class func PingFangSCSemiBold(size: CGFloat) -> UIFont {
        return Font(.PingFangSC, type: .SemiBold, size: size)
    }



    // MARK: Deprecated

    /// EZSwiftExtensions
    @available(*, deprecated: 1.8)
    public class func PrintFontFamily(_ font: FontName) {
        let arr = UIFont.fontNames(forFamilyName: font.rawValue)
        for name in arr {
            print(name)
        }
    }
}

#endif
