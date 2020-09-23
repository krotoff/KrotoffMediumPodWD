Pod::Spec.new do |spec|
  spec.name         = 'KrotoffMediumPodWD'
  spec.version      = '0.1.0'
  spec.authors      = { 
    'Andrey Krotov' => 'akrotoff95@gmail.com'
  }
  spec.license      = { 
  	:type => 'MIT',
    :file => 'LICENSE' 
  }
  spec.homepage     = 'https://github.com/krotoff/KrotoffMediumPodWD'
  spec.source       = { 
  	:git => 'https://github.com/krotoff/KrotoffMediumPodWD.git', 
    :branch => 'master',
  	:tag => spec.version.to_s 
  }
  spec.summary      = 'Framework with dependency for example on Medium.com'
  spec.source_files = '**/*.swift', '*.swift'
  spec.swift_versions = '4.0'
  spec.ios.deployment_target = '11.0'

  spec.subspec 'CustomView' do |sp|
    sp.dependency 'KrotoffMediumProject'
  end

  spec.subspec 'SeparatedCustomViewController' do |sp|
    sp.dependency 'KrotoffMediumProject'
    sp.source_files = '*/SeparatedCustomViewController.swift'
  end
end