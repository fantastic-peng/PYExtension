
Pod::Spec.new do |s|
  s.name             = 'PYExtension'
  s.version          = '1.0.2'
  s.summary          = '通用分类'

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/fantastic-peng/PYExtension'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'fantastic-peng' => '1509883008@qq.com' }
  s.source           = { :git => 'https://github.com/fantastic-peng/PYExtension.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'PYExtension/Classes/**/*'

end
