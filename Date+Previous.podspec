Pod::Spec.new do |s|
  s.name             = 'Date+Previous'
  s.version          = '1.0'
  s.summary          = 'A library that lets you get the previous day of week from a given date.'

  s.description      = <<-DESC
  A library that lets you get the previous day of week from a given date. Useful for getting the previous Monday, for example.
                       DESC

  s.homepage         = 'https://github.com/hughbe/Date-Previous'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'hughbe' => 'hughbellars@gmail.com' }
  s.source           = { :git => 'https://github.com/hughbe/Date-Previous.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'
  s.swift_version = '4.0'

  s.source_files = 'src/*'
end
