import SwiftUI

//struct ResponsiveView<Content: View>: View {
//    var content: (Properties)-> Content
//    init(@ViewBuilder content: @escaping (Properties)-> Content) {
//        self.content = content
//    }
//    var body: some View {
//        GeometryReader{proxy in
//            
//            let size = proxy.size
//            let isLandscape = size.width > size.height
//            let isIpad = UIDevice.current.userInterfaceIdiom == .pad
//            let isMaxSplit = isSplit() && size.width < 400
//            
////            MARK: In vertical Hiding Side Bar Completely
////            In Horizontal Showing Side bar for 0.75 Fraction
//            let isAdoptable = isIpad && (isLandscape ? !isMaxSplit : !isSplit())
//            let properties = Properties(isLandscape: isLandscape, isiPad: isIpad, isSplit: isSplit(), isMaxSplit: isMaxSplit, isAdoptable: isAdoptable, size: size)
//           
//            content(properties)
//                .frame(width: size.width, height: size.height)
//        }
//    }
//    
//    func isSplit()-> Bool {
//        guard let screen = UIApplication.shared.connectedScenes.first as? UIWindowScene
//        else{return false}
//        return screen.windows.first?.frame.size != screen.screen.bounds.size
//    }
//}
//
//#Preview {
//    BaseView()
//}
//
//
//struct Properties{
//    var isLandscape: Bool
//    var isiPad: Bool
//    var isSplit: Bool
//    var isMaxSplit: Bool
//    var isAdoptable: Bool
//    var size: CGSize
//}


// MARK: custom view which will return the Properties of the View
struct ResponsiveView<Content: View>: View {
    var content: (Properties)-> Content
    var body: some View {
        GeometryReader{proxy in
            let size = proxy.size
            let isLandscape = (size.width > size.height)
            let isiPad = UIDevice.current.userInterfaceIdiom == .pad
            
            content(Properties(isLandscape: isLandscape, isiPad: isiPad, size: size))
                .frame(width: size.width, height: size.height, alignment: .center)
            
        }
    }
}

//#Preview {
//    ResponsiveView()
//}


struct Properties {
    var isLandscape: Bool
    var isiPad: Bool
    var size: CGSize
}
