
Pod::Spec.new do |s|

  s.name         = "KDUIFramework"
  s.version      = "0.0.1"
  s.summary      = "A short description of KDUIFramework."

  s.description  = <<-DESC
                   A longer description of KDUIFramework in Markdown format.

                   * Think: Why did you write this? What is the focus? What does it do?
                   * CocoaPods will be using this to generate tags, and improve search results.
                   * Try to keep it short, snappy and to the point.
                   * Finally, don't worry about the indent, CocoaPods strips it!
                   DESC

  s.homepage     = "https://github.com/shiyiyufen/KDUIFramework"
  s.license      = "MIT (example)"
  s.author             = { "acorld" => "bc_lastk@163.com" }
  s.source       = { :git => "https://github.com/shiyiyufen/KDUIFramework.git", :tag => "0.0.1" }
  s.source_files  = "KDUIFramework", "KDUIFramework/*.{h,m}"
  s.exclude_files = "Classes/Exclude"

end
