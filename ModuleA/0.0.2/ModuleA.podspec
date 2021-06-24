Pod::Spec.new do |spec|

  spec.name         = 'ModuleA'

  spec.version      = '0.0.2'

  spec.summary      = '业务模块B'

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
  
  spec.subspec 'Client' do |ss|
     ss.source_files = "ModuleA/Client/**/*.{h,m}"
  end
    
  spec.subspec 'Target' do |ss|
     ss.source_files = "ModuleA/Target/**/*.{h,m}"
     ss.dependency "ModuleA/Client"
  end

end
