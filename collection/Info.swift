

import Foundation
import UIKit

class Shortcuts{
    var shortImage: UIImage
    var shortFirstLabel: String
    var shortSecondLabel: String
    var color: UIColor
    
    init(shortImage: UIImage, shortFirstLabel: String, shortSecondLabel: String, color: UIColor){
        self.shortFirstLabel  = shortFirstLabel
        self.shortSecondLabel = shortSecondLabel
        self.shortImage = shortImage
        self.color = color
    }
}
