import SwiftUI

public extension View {
    /// Runs an action once, independent of when the view hierarchy changes.
    func prepare(perform action: @escaping () -> Void) -> some View {
        modifier(PrepareViewModifier(action: action))
    }
}

/// View modifier that executes a closure once, independent of when the view hierarchy changes.
struct PrepareViewModifier: ViewModifier {
    /// Boolean that indicates whether the action has run.
    @State private var hasPrepared = false
    
    /// The action to perform. If action is nil, the call has no effect.
    let action: (() -> Void)
    
    func body(content: Content) -> some View {
        content
            .onAppear {
                guard hasPrepared == false else {
                    return
                }
                
                action()
                hasPrepared = true
            }
    }
}
