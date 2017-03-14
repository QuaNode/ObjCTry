Pod::Spec.new do |s|
  s.name             = 'ObjCTry'
  s.version          = '1.0.0'
  s.summary          = 'Catch Objective-C exceptions in your Swift project.'

  s.description      = <<-DESC
Simple code wrapper. ObjCTry helps you by catching Objective-C exceptions within your Swift do-catch section.
                       DESC

  s.homepage         = 'https://github.com/svetam/ObjCTry'

  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Svetislav Markovic' => 'svetam.sd@gmail.com' }
  s.source           = { :git => 'https://github.com/svetam/ObjCTry.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'ObjCTry/Classes/**/*'
  s.public_header_files = 'ObjCTry/Classes/**/*.h'

end
