#
#  Be sure to run `pod spec lint Amplify.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

# Version definitions
$AMPLIFY_VERSION = '0.33.0'
$AMPLIFY_RELEASE_TAG = "v#{$AMPLIFY_VERSION}"

Pod::Spec.new do |s|
  s.name         = 'AWSClientRuntime'
  s.version      = $AMPLIFY_VERSION
  s.summary      = 'Amazon Web Services Amplify for iOS.'

  s.description  = 'AWS Amplify for iOS provides a declarative library for application development using cloud services'

  s.homepage     = 'https://github.com/cfergie/aws-sdk-swift'
#   s.license      = 'Apache License, Version 2.0'
  s.author       = { 'Amazon Web Services' => 'amazonwebservices' }
  s.source       = { :git => 'https://github.com/cfergie/aws-sdk-swift.git', :tag => $AMPLIFY_RELEASE_TAG }

  s.platform     = :ios, '16'
  s.swift_version = '5.0'

  s.source_files = 'Sources/Core/AWSClientRuntime/**/*.swift'

end

