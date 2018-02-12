platform :ios, '10.0'
inhibit_all_warnings!

target 'VinylThis' do
  use_frameworks!

  pod 'Kingfisher', '~> 4.1.0'
  pod 'Koloda', '~> 4.3.1'
  pod 'PureLayout'
  pod 'SGSwiftyBind'
  pod 'SwiftyBeaver'
  pod 'SwiftLint'
  pod 'UIImageColors'

  target 'VinylThisTests' do
    inherit! :search_paths
  end

  target 'VinylThisUITests' do
    inherit! :search_paths
  end
end

post_install do |installer|
  installer.pods_project.targets.each do |target|
      target.build_configurations.each do |config|
          config.build_settings['ENABLE_STRICT_OBJC_MSGSEND'] = "NO"
          config.build_settings['SWIFT_VERSION'] = '3.2'
          config.build_settings['CLANG_ENABLE_CODE_COVERAGE'] = "NO"
      end
  end
end
