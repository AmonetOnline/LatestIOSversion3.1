platform :ios, '11.0'


def persistence_pods
    pod 'SwiftHash'
    pod 'SwiftKeychainWrapper'
    pod 'RNCryptor'
    pod 'Realm'
    pod 'RealmSwift'
end

def ui_pods
    pod 'IQKeyboardManager'
    pod 'SwiftSoup'
    pod 'SwiftMessages'
    pod 'Cosmos', '~> 17.0'
    pod 'ESTabBarController-swift'
    pod 'PhoneNumberKit'
    pod 'M13Checkbox'
    pod 'BMPlayer', '~> 1.3.0'
    pod 'FHMultilineTextField'
end

def networking_pods
    pod 'Result'
    pod 'ReachabilitySwift'
end

target 'Amonet' do
  use_frameworks!
 
  ui_pods
  persistence_pods
  networking_pods
  pod 'SwiftyBeaver'
  pod 'Swinject'
  pod 'BraintreeDropIn'
  pod 'JGProgressHUD'
  
  target 'AmonetTests' do
    inherit! :search_paths
  end

  target 'Core' do
    persistence_pods
    networking_pods
  end
  
  target 'AmonetUITests' do
    inherit! :search_paths
  end

end
