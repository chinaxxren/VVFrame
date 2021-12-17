Pod::Spec.new do |spec|
  spec.name         = "VVFrame"
  spec.version      = "0.0.1"
  spec.summary      = "VVFrame"
  spec.homepage     = "https://github.com/chinaxxren/VVFrame"
  spec.license      = "MIT"
  spec.author       = { "chinaxxren" => "jiangmingz@qq.com" }
  spec.platform     = :ios, "10.0"
  spec.source       = { :git => "git@github.com:chinaxxren/VVFrame.git", :tag => "#{spec.version}" }
  spec.source_files = 'Source/Classes/**/*.*'
  spec.swift_version   = "5.0"
end
