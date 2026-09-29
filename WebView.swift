import SwiftUI
import WebKit

// Показывает локальный index.html внутри приложения.
// localStorage работает — данные хранятся в контейнере приложения.
struct WebView: UIViewRepresentable {
    func makeUIView(context: Context) -> WKWebView {
        let config = WKWebViewConfiguration()
        config.preferences.javaScriptEnabled = true
        let w = WKWebView(frame: .zero, configuration: config)
        w.scrollView.bounces = false
        if let url = Bundle.main.url(forResource: "index", withExtension: "html") {
            w.loadFileURL(url, allowingReadAccessTo: url.deletingLastPathComponent())
        }
        return w
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {}
}
