Pod::Spec.new do |spec|

  spec.name         = 'FF_APM'

  spec.version      = '0.0.2'

  spec.summary      = 'APM模块'

  spec.description  = <<-DESC
                       TODO: Add long description of the pod here.
                       DESC

  spec.homepage     = 'https://github.com/Fengzp121/FF_APM'

  spec.license      = 'MIT'

  spec.platform     = :ios, '9.0'

  spec.author       = { 'Fengzp121' => '863750990@qq.com' }

  spec.source       = { :git => 'https://github.com/Fengzp121/FF_APM.git', :tag => spec.version.to_s }

  spec.requires_arc = true
  
  spec.source_files = "FF_APM/APM/**/*.{h,m}"

end
