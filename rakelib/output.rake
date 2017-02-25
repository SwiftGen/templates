MODULE_INPUT_PATH = 'Fixtures/stub-env/Modules'
MODULE_OUTPUT_PATH = 'Fixtures/stub-env'
SDKS = {
  :macosx => 'x86_64-apple-macosx10.12',
  :iphoneos => 'armv7s-apple-ios10.0'
}
TOOLCHAINS = {
  :swift2 => {
    :module_path => "#{MODULE_OUTPUT_PATH}/swift2.3",
    :toolchain => 'com.apple.dt.toolchain.Swift_2_3'
  },
  :swift3 => {
    :module_path => "#{MODULE_OUTPUT_PATH}/swift3",
    :toolchain => 'com.apple.dt.toolchain.XcodeDefault'
  }
}

namespace :output do
  desc 'Compile modules'
  task :modules do |task|
    # macOS
    modules = ['PrefsWindowController']
    modules.each do |m|
      print "Compiling module #{m}… (macos)\n"
      compile_module(m, :macosx, task)
    end

    # iOS
    modules = ['CustomSegue', 'LocationPicker', 'SlackTextViewController']
    modules.each do |m|
      print "Compiling module #{m}… (ios)\n"
      compile_module(m, :iphoneos, task)
    end

    # delete swiftdoc
    Dir.glob("#{MODULE_OUTPUT_PATH}/*.swiftdoc").each do |f|
      FileUtils.rm_rf(f)
    end
  end

  desc 'Compile output'
  task :compile => :modules do |task|
    Dir.glob('Tests/Expected/**/*.swift').each do |f|
      compile_file(f, task)
    end
  end

  def compile_module(m, sdk, task)
    target = SDKS[sdk]

    TOOLCHAINS.each_pair do |key, toolchain|
      xcrun(%Q(--toolchain #{toolchain[:toolchain]} -sdk #{sdk} swiftc -emit-module "#{MODULE_INPUT_PATH}/#{m}.swift" -module-name "#{m}" -emit-module-path "#{toolchain[:module_path]}" -target "#{target}"), task, false)
    end
  end

  def compile_file(f, task)
    if f.match('swift3')
      toolchain = TOOLCHAINS[:swift3]
    else
      toolchain = TOOLCHAINS[:swift2]
    end

    if f.match('iOS')
      sdks = [:iphoneos]
    elsif f.match('macOS')
      sdks = [:macosx]
    else
      sdks = [:iphoneos, :macosx]
    end

    sdks.each do |sdk|
      xcrun(%Q(--toolchain #{toolchain[:toolchain]} -sdk #{sdk} swiftc -parse -target #{SDKS[sdk]} -I #{toolchain[:module_path]} "#{MODULE_OUTPUT_PATH}/Definitions.swift" #{f}), task, false)
    end
  end
end
