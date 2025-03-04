import SwiftUI

/// Preview with settings is located in ``RC_Pay_Stage/DSButtonPreview`` file
///
/// - parameters:
///     - state:
///         - ``RC_Pay_Stage/DSButton/State-swift.enum/normal`` normal state
///         - ``RC_Pay_Stage/DSButton/State-swift.enum/disable`` the button is always recolored gray.
///         - ``RC_Pay_Stage/DSButton/State-swift.enum/loading`` the button always turns gray, hides the content and displays the ProgressView.
///     - type: The background and foreground colors depends on it
///     - size: Сhanges button size
///     - maxWidth: Nil crops the button to fit the content, .infinity stretches to fill the entire screen
///     - icon: You can add icon to the left side. Optional value
///     - title: Text inside the button
///     - action: What the button should to do
///
/// [Figma Documentation](https://www.figma.com/design/GYCd7eRPzJZdprwUzWNnal/%F0%9F%9B%8D%EF%B8%8F-RC-PAY-2.0-(App)%3A-Local-Components-(ALL)?node-id=2356-9774&m=dev)
public struct DSButton: View {
    
    // MARK: Properties
    @Binding var state: DSButton.State
    let type: DSButton.`Type`
    let size: DSButton.Size
    let maxWidth: CGFloat?
    
    let icon: Image?
    let title: String
    
    let action: () -> Void
    
    // MARK: Init
    public init(
        state: Binding<DSButton.State> = .constant(.normal),
        type: DSButton.`Type` = .primary,
        size: DSButton.Size = .m,
        maxWidth: CGFloat? = .infinity,
        icon: Image? = nil,
        title: String = "",
        action: @escaping () -> Void
    ) {
        self._state = state
        self.type = type
        self.size = size
        self.maxWidth = maxWidth
        self.icon = icon
        self.title = title
        self.action = action
    }

    public var body: some View {
        Button(action: action) {
            ZStack {
                HStack(alignment: .center, spacing: size.spacing) {
                    if let icon = icon {
                        icon
                            .resizable()
                            .renderingMode(.template)
                            .foregroundStyle(getColors().foregroundColor)
                            .frame(width: size.iconSideLenght, height: size.iconSideLenght)
                        
                    }
                    if !title.isEmpty {
                        Text(title)
                            .font(size.font)
                    }
                }
                if state == .loading {
                    SwiftUI.ProgressView()
                        .progressViewStyle(CircularProgressViewStyle(tint: Colors.Color.Semantic.Content.Normal.primary.suiColor))
                        .scaleEffect(size.progressScaleFactor, anchor: .center)
                }
            }
            .padding(.horizontal, size.horizontalPadding)
            .padding(.vertical, size.verticalPadding)
            .frame(maxWidth: maxWidth)
            .frame(height: size.buttonHeight)
        }
        .foregroundStyle(getColors().foregroundColor)
        .background(getColors().backgroundColor)
        .clipShape(.rect(cornerRadius: 8))
        
        .disabled(state == .loading || state == .disable)
    }
    
    // MARK: Settings
    func getColors() -> (foregroundColor: Color, backgroundColor: Color) {
        return switch (type, state) {
        case (.custom(let fg, let bg), .normal):
            (fg, bg)
            
        case (.accent, .normal):
            (Colors.Color.Semantic.Content.Normal.Static.dark.suiColor,
             Colors.Color.Semantic.Background.Normal.brand.suiColor)
            
        case (.primary, .normal):
            (Colors.Color.Semantic.Content.Normal.contrastPrimary.suiColor,
             Colors.Color.Semantic.Background.Normal.contrast.suiColor)
            
        case (.negative, .normal):
            (Colors.Color.Semantic.Content.Normal.contrastPrimary.suiColor,
             Colors.Color.Semantic.Background.Normal.negative.suiColor)
            
        case (.positive, .normal):
            (Colors.Color.Semantic.Content.Normal.contrastPrimary.suiColor,
             Colors.Color.Semantic.Background.Normal.positive.suiColor)
            
        case (.secondary, .normal):
            (Colors.Color.Semantic.Content.Normal.primary.suiColor,
             Colors.Color.Semantic.Background.Normal.secondary.suiColor)

        case (.staticLight, .normal):
            (Colors.Color.Semantic.Content.Normal.Static.dark.suiColor,
             Colors.Color.Semantic.Background.Normal.Static.light.suiColor)
            
        case (_ , .disable):
            (Colors.Color.Semantic.Content.Other.disabled.suiColor,
             Colors.Color.Semantic.Background.Other.disabled.suiColor)
            
        case (_, .loading):
            (.clear,
             Colors.Color.Semantic.Background.Other.disabled.suiColor)
        }
    }
    
}
