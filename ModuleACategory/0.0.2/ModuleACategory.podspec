Pod::Spec.new do |spec|

  spec.name         = 'ModuleACategory'

  spec.version      = '0.0.2'

  spec.summary      = '业务模块B组建分类'

  spec.description  = <<-DESC
                       TODO: Add long description of the pod here.
                       DESC

  spec.homepage     = 'https://github.com/Fengzp121/ModuleA_Category'

  spec.license      = 'MIT'

  spec.platform     = :ios, '9.0'

  spec.pod_target_xcconfig = { 'VALID_ARCHS' => 'arm64' }

  spec.author       = { 'Fengzp121' => '863750990@qq.com' }

  spec.source       = { :git => 'https://github.com/Fengzp121/ModuleA_Category.git', :tag => spec.version.to_s }

  spec.requires_arc = true

  spec.source_files  = 'ModuleACategory/Category/**/*.{h,m}'

  spec.dependency 'CTMediator'

end