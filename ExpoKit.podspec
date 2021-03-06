
# generated from template-files/ios/ExpoKit.podspec

Pod::Spec.new do |s|
  s.name = "ExpoKit"
  s.version = "2.7.5"
  s.summary = 'ExpoKit'
  s.description = 'ExpoKit allows native projects to integrate with the Expo SDK.'
  s.homepage = 'http://docs.expo.io'
  s.license = 'BSD'
  s.author = "650 Industries, Inc."
  s.requires_arc = true
  s.platform = :ios, "9.0"
  s.default_subspec = "Core"
  s.source = { :git => "git@github.com:MatrixEmpire/expo.git" }

  s.subspec "Core" do |ss|
    ss.source_files = "ios/Exponent/**/*.{h,m}", "template-files/keys.json"
    ss.exclude_files = "ios/Exponent/Supporting/**", "ios/Exponent/Versioned/Optional/**/*.{h,m}", "ios/Exponent/Versioned/Core/Api/AdMob/*.{h,m}", "ios/Exponent/Versioned/Core/Api/EXFacebook.{h,m}", "ios/Exponent/Versioned/Core/Api/FBAds/*.{h,m}", "ios/Exponent/Kernel/Services/EXGoogleAuthManager.{h,m}", "ios/Exponent/Versioned/Core/Api/EXGoogle.{h,m}", "ios/Exponent/Versioned/Core/Api/Components/GoogleMaps/*.{h,m}"

    ss.preserve_paths = "ios/Exponent/**/*.{h,m}"
    ss.dependency 'Amplitude-iOS', '~> 3.8'
    ss.dependency 'Analytics', '~> 3.5'

    ss.dependency 'CocoaLumberjack', '~> 3.2.1'
    ss.dependency 'Crashlytics', '~> 3.8'
    ss.dependency 'Fabric', '~> 1.6'
    ss.dependency 'lottie-ios', '~> 2.5.0'
    ss.dependency 'JKBigInteger2', '0.0.5'
    ss.dependency 'Branch', '~> 0.24.2'
    ss.dependency 'React' # explicit dependency required for CocoaPods >= 1.5.0

    # Universal modules required by ExpoKit so the code compiles
    # ss.dependency 'EXCore'
    # ss.dependency 'EXReactNativeAdapter'
    # ss.dependency 'EXSensorsInterface'
    # ss.dependency 'EXFileSystemInterface'
    # ss.dependency 'EXPermissionsInterface'
    # ss.dependency 'EXCameraInterface'
    # ss.dependency 'EXConstantsInterface'
  end
  s.subspec 'EXCore' do |ss|
      ss.source_files = 'modules/expo-core/ios/**/*.{h,m}'
  end
  s.subspec 'EXReactNativeAdapter' do |ss|
      ss.source_files = 'modules/expo-react-native-adapter/ios/**/*.{h,m}'
  end
  s.subspec 'EXSensors' do |ss|
      ss.source_files = 'modules/expo-sensors-interface/ios/**/*.{h,m}', 'modules/expo-sensors/ios/**/*.{h,m}'
  end
  s.subspec 'EXFileSystem' do |ss|
      ss.source_files = 'modules/expo-file-system/ios/**/*.{h,m}', 'modules/expo-file-system-interface/ios/**/*.{h,m}'
  end
  s.subspec 'EXPermissions' do |ss|
      ss.source_files = 'modules/expo-permissions/ios/**/*.{h,m}', 'modules/expo-permissions-interface/ios/**/*.{h,m}'
  end
  s.subspec 'EXCamera' do |ss|
      ss.source_files = 'modules/expo-camera/ios/**/*.{h,m}', 'modules/expo-camera-interface/ios/**/*.{h,m}'
  end
  s.subspec 'EXConstants' do |ss|
      ss.source_files = 'modules/expo-constants/ios/**/*.{h,m}', 'modules/expo-constants-interface/ios/**/*.{h,m}'
  end
  s.subspec "AdMob" do |ss|
    ss.source_files = "ios/Exponent/Versioned/Core/Api/AdMob/*.{h,m}"
    ss.dependency "ExpoKit/Core"
    ss.dependency 'Google-Mobile-Ads-SDK', '~> 7.22.0'

  end
  s.subspec "FB" do |ss|
    ss.source_files = 'ios/Exponent/Versioned/Core/Api/EXFacebook.{h,m}'
    ss.dependency "ExpoKit/Core"
    ss.dependency 'FBSDKCoreKit', '~> 4.28'
    ss.dependency 'FBSDKLoginKit', '~> 4.28'
    ss.dependency 'FBSDKShareKit', '~> 4.28'
  end
  s.subspec "FBAds" do |ss|
    ss.source_files = "ios/Exponent/Versioned/Core/Api/FBAds/*.{h,m}"
    ss.dependency "ExpoKit/FB"
    ss.dependency 'FBAudienceNetwork', '4.99.0'
  end
  s.subspec "Google" do |ss|
    ss.source_files = 'ios/Exponent/Versioned/Core/Api/EXGoogle.{h,m}', "ios/Exponent/Kernel/Services/EXGoogleAuthManager.{h,m}"
    ss.dependency 'AppAuth', '~> 0.4'
    ss.dependency 'GoogleSignIn', '~> 3.0'
  end
  s.subspec "GoogleMaps" do |ss|
    ss.source_files = "ios/Exponent/Versioned/Core/Api/Components/GoogleMaps/*.{h,m}"
    ss.dependency "ExpoKit/Google"
    ss.dependency 'GoogleMaps', '~> 2.5.0'
    ss.dependency 'Google-Maps-iOS-Utils', '~> 2.1.0'
  end


  s.subspec "Payments" do |ss|
    ss.dependency "ExpoKit/Core"
    ss.dependency 'Stripe', '~> 10.1.0'
    ss.source_files = 'ios/Exponent/Versioned/Optional/Payments/*.{h,m}'
  end

  s.subspec "AR" do |ss|
    ss.dependency "ExpoKit/Core"
    ss.source_files = 'ios/Exponent/Versioned/Optional/ARKit/**'
    ss.dependency 'GPUImage', '~> 0.1.7'
  end

  s.subspec "FaceDetector" do |ss|
    ss.dependency "EXFaceDetector"
  end
end
