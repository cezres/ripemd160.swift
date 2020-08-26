Pod::Spec.new do |spec|

  spec.name         = "ripemd160.swift"
  spec.version      = "1.0.0"
  spec.summary      = "ripemd160.swift."

  spec.homepage     = "https://github.com/cezres/ripemd160.swift"
  spec.license      = "MIT"
  spec.author       = ""

  spec.swift_version= '5'
  spec.module_name  = 'ripemd160'
  spec.platform     = :ios, "8.0"

  spec.source       = { :git => "https://github.com/cezres/ripemd160.swift.git", :tag => "#{spec.version}" }
  spec.source_files = "ripemd160.swift", "Sources/ripemd160/*.{swift}"

end
