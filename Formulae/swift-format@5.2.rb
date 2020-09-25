class SwiftFormatAT52 < Formula
    desc "`swift-format` provides the formatting technology for SourceKit-LSP and the building blocks for doing code formatting transformations."
    homepage "https://github.com/apple/swift-format"
    url "https://github.com/apple/swift-format.git", :branch => "swift-5.2-branch"
    version "5.2"

    depends_on :xcode => ["11.4", :build]

    def install
        system "swift build -c release --disable-sandbox --build-path '.build'"
        bin.install ".build/release/swift-format"
    end

    test do
        system "#{bin}/swift-format --version"
    end
end
