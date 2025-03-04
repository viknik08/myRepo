import UIKit
import SwiftUI

enum Colors {
    enum Color {
        enum Semantic {
            enum Content {
                enum Normal {
                    static let primary: UIColor = UIColor(named: "color-semantic-content-normal-primary") ?? .white
                    static let secondary: UIColor = UIColor(named: "color-semantic-content-normal-secondary") ?? .white
                    static let tertiary: UIColor = UIColor(named: "color-semantic-content-normal-tertiary") ?? .white
                    static let contrastSecondary: UIColor = UIColor(named: "color-semantic-content-normal-contrast-secondary") ?? .white
                    static let contrastPrimary: UIColor = UIColor(named: "color-semantic-content-normal-contrast-primary") ?? .white
                    
                    static let brand: UIColor = UIColor(named: "color-semantic-content-normal-brand") ?? .white
                    
                    static var positive: UIColor = UIColor(named: "color-semantic-content-normal-positive") ?? .white
                    static var negative: UIColor = UIColor(named: "color-semantic-content-normal-negative") ?? .white
                    static var link: UIColor = UIColor(named: "color-semantic-content-normal-link") ?? .white
                    static var warning: UIColor = UIColor(named: "color-semantic-content-normal-warning") ?? .white
                    
                    enum Static {
                        static var dark: UIColor = UIColor(named: "color-semantic-content-normal-static-dark") ?? .white
                        static var light: UIColor = UIColor(named: "color-semantic-content-normal-static-light") ?? .white
                    }
                }
                
                enum Other {
                    static let disabled: UIColor = UIColor(named:  "color-semantic-content-other-disabled") ?? .white
                    static let linkVisited: UIColor = UIColor(named: "color-semantic-content-other-link-visited") ?? .white
                    static let placeholder: UIColor = UIColor(named: "color-semantic-content-other-placeholder") ?? .white
                    static let negative: UIColor = UIColor(named: "color-semantic-content-other-negative") ?? .white
                }
            }
            
            enum Background {
                enum Normal {
                    static let bgPrimary: UIColor = UIColor(named: "color-semantic-background-normal-bg-primary") ?? .white
                    static let bgSecondary: UIColor = UIColor(named: "color-semantic-background-normal-bg-secondary") ?? .white
                    static let onImage: UIColor = UIColor(named: "color-semantic-background-normal-on-image") ?? .white
                    static let contrast: UIColor = UIColor(named: "color-semantic-background-normal-contrast") ?? .white
                    static let negative: UIColor = UIColor(named: "color-semantic-background-normal-negative") ?? .white
                    static let positive: UIColor = UIColor(named: "color-semantic-background-normal-positive") ?? .white
                    static let brand: UIColor = UIColor(named: "color-semantic-background-normal-brand") ?? .white
                    static let primary: UIColor = UIColor(named: "color-semantic-background-normal-primary") ?? .white
                    static let secondary: UIColor = UIColor(named: "color-semantic-background-normal-secondary") ?? .white
                    static let tertiary: UIColor = UIColor(named: "color-semantic-background-normal-tertiary") ?? .white
                    static let overlay: UIColor = UIColor(named: "color-semantic-background-normal-overlay") ?? .white

                    enum Static {
                        static let light: UIColor = UIColor(named: "color-semantic-background-normal-static-light") ?? .white
                        static let dark: UIColor = UIColor(named: "color-semantic-background-normal-static-dark") ?? .white
                    }
                }
                
                enum Active {
                    static let contrast: UIColor = UIColor(named: "color-semantic-background-active-contrast") ?? .white
                    static let negative: UIColor = UIColor(named: "color-semantic-background-active-negative") ?? .white
                    static let positive: UIColor = UIColor(named: "color-semantic-background-active-positive") ?? .white
                    static let brand: UIColor = UIColor(named: "color-semantic-background-active-brand") ?? .white
                }
                
                enum Other {
                    static let disabled: UIColor = UIColor(named: "color-semantic-background-other-disabled") ?? .white
                }
            }
            
            enum Border {
                enum Normal {
                    static let soft: UIColor = UIColor(named: "color-semantic-border-normal-soft") ?? .white
                    static let negative: UIColor = UIColor(named: "color-semantic-border-normal-negative") ?? .white
                }
                enum Active {
                    static let soft: UIColor = UIColor(named: "color-semantic-border-active-soft") ?? .white
                    static let hard: UIColor = UIColor(named: "color-semantic-border-active-hard") ?? .white
                }
                enum Other {
                    static let selected: UIColor = UIColor(named: "color-semantic-border-other-selected") ?? .white
                    static let selectedNew: UIColor = UIColor(named: "color-semantic-border-other-selectedNew") ?? .white
                }
                enum Hover {
                    static let soft: UIColor = UIColor(named: "color-semantic-border-hover-soft") ?? .white
                }
            }
        }
        
        enum NonSemantic {
            enum Annotation {
                static let children: UIColor = UIColor(named: "color-non-semantic-annotation-children") ?? .white
                static let entertainment: UIColor = UIColor(named: "color-non-semantic-annotation-entertainment") ?? .white
                static let food: UIColor = UIColor(named: "color-non-semantic-annotation-food") ?? .white
                static let health: UIColor = UIColor(named: "color-non-semantic-annotation-health") ?? .white
                static let hobby: UIColor = UIColor(named: "color-non-semantic-annotation-hobby") ?? .white
                static let home: UIColor = UIColor(named: "color-non-semantic-annotation-home") ?? .white
                static let rent: UIColor = UIColor(named: "color-non-semantic-annotation-rent") ?? .white
                static let services: UIColor = UIColor(named: "color-non-semantic-annotation-services") ?? .white
                static let shopping: UIColor = UIColor(named: "color-non-semantic-annotation-shopping") ?? .white
                static let sport: UIColor = UIColor(named: "color-non-semantic-annotation-sport") ?? .white
                static let technique: UIColor = UIColor(named: "color-non-semantic-annotation-technique") ?? .white
            }
            enum Content {
                static let neutral: UIColor = UIColor(named: "color-non-semantic-content-neutral") ?? .white
                static let red: UIColor = UIColor(named: "color-non-semantic-content-red") ?? .white
                static let green: UIColor = UIColor(named: "color-non-semantic-content-green") ?? .white
                static let blue: UIColor = UIColor(named: "color-non-semantic-content-blue") ?? .white
                static let purple: UIColor = UIColor(named: "color-non-semantic-content-purple") ?? .white
                static let orange: UIColor = UIColor(named: "color-non-semantic-content-orange") ?? .white
                static let pink: UIColor = UIColor(named: "color-non-semantic-content-pink") ?? .white
                static let yellow: UIColor = UIColor(named: "color-non-semantic-content-yellow") ?? .white
                static let teal: UIColor = UIColor(named: "color-non-semantic-content-teal") ?? .white
            }
            
            enum Background {
                static let neutral: UIColor = UIColor(named: "color-non-semantic-background-neutral") ?? .white
                static let red: UIColor = UIColor(named: "color-non-semantic-background-red") ?? .white
                static let green: UIColor = UIColor(named: "color-non-semantic-background-green") ?? .white
                static let blue: UIColor = UIColor(named: "color-non-semantic-background-blue") ?? .white
                static let purple: UIColor = UIColor(named: "color-non-semantic-background-purple") ?? .white
                static let orange: UIColor = UIColor(named: "color-non-semantic-background-orange") ?? .white
                static let pink: UIColor = UIColor(named: "color-non-semantic-background-pink") ?? .white
                static let yellow: UIColor = UIColor(named: "color-non-semantic-background-yellow") ?? .white
                static let teal: UIColor = UIColor(named: "color-non-semantic-background-teal") ?? .white
                
                enum Dark {
                    static let lightBlur: UIColor = UIColor(named: "color-non-semantic-background-dark-lightBlur") ?? .white
                }
                
                enum Soft {
                    static let neutral: UIColor = UIColor(named: "color-non-semantic-background-soft-neutral") ?? .white
                    static let red: UIColor = UIColor(named: "color-non-semantic-background-soft-red") ?? .white
                    static let green: UIColor = UIColor(named: "color-non-semantic-background-soft-green") ?? .white
                    static let blue: UIColor = UIColor(named: "color-non-semantic-background-soft-blue") ?? .white
                    static let purple: UIColor = UIColor(named: "color-non-semantic-background-soft-purple") ?? .white
                    static let orange: UIColor = UIColor(named: "color-non-semantic-background-soft-orange") ?? .white
                    static let pink: UIColor = UIColor(named: "color-non-semantic-background-soft-pink") ?? .white
                    static let yellow: UIColor = UIColor(named: "color-non-semantic-background-soft-yellow") ?? .white
                    static let teal: UIColor = UIColor(named: "color-non-semantic-background-soft-teal") ?? .white
                }
            }
        }
    }
}

extension UIColor {
    var suiColor: Color {
        Color(uiColor: self)
    }
}
