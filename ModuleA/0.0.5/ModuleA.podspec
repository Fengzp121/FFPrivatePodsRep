Pod::Spec.new do |spec|

  spec.name         = 'ModuleA'

  spec.version      = '0.0.5'

  spec.summary      = '业务模块A'

  spec.description  = <<-DESC
                       TODO: Add long description of the pod here.
                       DESC

  spec.homepage     = 'https://github.com/Fengzp121/ModuleA'

  spec.license      = 'MIT'

  spec.platform     = :ios, '9.0'

  spec.pod_target_xcconfig = { 'VALID_ARCHS' => 'arm64' }

  spec.author       = { 'Fengzp121' => '863750990@qq.com' }

  spec.source       = { :git => 'https://github.com/Fengzp121/ModuleA.git', :tag => spec.version.to_s }

  spec.requires_arc = true
  
  spec.subspec 'Client' do |client|
       client.source_files = "ModuleA/Client/**/*.{h,m}"
       client.dependency 'FF_HttpNetwork'
       client.dependency 'SDWebImage','5.11.1'
  end
    
  spec.subspec 'Target' do |target|
       target.source_files = "ModuleA/Target/**/*.{h,m}"
       target.dependency "ModuleA/Client"
  end
end
