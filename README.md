# SwiftUIAnimations
Just Playing with SwiftUI Animation

CombinedAnimation()
FadeAnimateView()
ProjectionEffect()

If you don't want all animation and want to see individual animations.

Then please update your contentView with specific animation like below:  


struct ContentView: View {
    var body: some View {
        CombinedAnimation()
    }
}

Or every view has its own preview, you can even test it there


struct FadeAnimateView_Previews: PreviewProvider {
    static var previews: some View {
        FadeAnimateView()
    }
}

struct CombinedAnimation_Previews: PreviewProvider {
    static var previews: some View {
        CombinedAnimation()
    }
}
