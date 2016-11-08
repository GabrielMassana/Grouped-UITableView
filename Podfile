source 'https://github.com/CocoaPods/Specs.git'

platform :ios, '9.0'

use_frameworks!
inhibit_all_warnings!

def common_pods

    #Internal Libraries
    
    #External Libraries

    pod 'PureLayout', '~> 3.0'

    #Analytics And Reporting

end

target :GroupedUITableView do
    common_pods
end

post_install do |installer|
    installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            config.build_settings['SWIFT_VERSION'] = '3.0'
        end
    end
end
