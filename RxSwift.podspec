Pod::Spec.new do |s|
  s.name             = "RxSwift"
  s.version          = "1.8.1"
  s.summary          = "Microsoft Reactive Extensions (Rx) for Swift and iOS/OSX platform"
  s.description      = <<-DESC
			This is a Swift port of Reactive extensions.

			[https://github.com/Reactive-Extensions](https://github.com/Reactive-Extensions)

			Like the original Rx, its intention is to enable easy composition of asynchronous operations and event streams.

			It tries to port as many concepts from the original Rx as possible, but some concepts were adapted for more pleasant and performant integration with iOS/OSX environment.

			Probably the best analogy for those who have never heard of Rx would be:


			```
			git diff | grep bug | less          #  linux pipes - programs communicate by sending
							    #  sequences of bytes, words, lines, '\0' terminated strings...
			```
			would become if written in RxSwift
			```
			gitDiff() >- grep("bug") >- less    // rx sink (>-) operator - rx units communicate by sending
							    // sequences of swift objects
			```
                        DESC
  s.homepage         = "https://github.com/kzaher/RxSwift"
  s.license          = 'MIT'
  s.author           = { "Krunoslav Zaher" => "krunoslav.zaher@gmail.com" }
  s.source           = { :git => "https://github.com/kzaher/RxSwift.git", :tag => s.version.to_s }

  s.requires_arc          = true

  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.9'

  s.source_files          = 'RxSwift/RxSwift/**/*.swift'
end
