#!/usr/bin/rake
require 'English'

## [ Constants ] ##############################################################

WORKSPACE = 'Templates'.freeze
SCHEME_NAME = 'Tests'.freeze
CONFIGURATION = 'Debug'.freeze
MIN_XCODE_VERSION = 9.0

## [ Output compilation ] #####################################################

MODULE_INPUT_PATH = 'Fixtures/stub-env/Modules'.freeze
MODULE_OUTPUT_PATH = 'Fixtures/stub-env'.freeze
SDKS = {
  macosx: 'x86_64-apple-macosx10.13',
  iphoneos: 'arm64-apple-ios11.0',
  watchos: 'armv7k-apple-watchos4.0',
  appletvos: 'arm64-apple-tvos11.0'
}.freeze
TOOLCHAINS = {
  swift3: {
    version: 3,
    module_path: "#{MODULE_OUTPUT_PATH}/swift3",
    toolchain: 'com.apple.dt.toolchain.XcodeDefault'
  },
  swift4: {
    version: 4,
    module_path: "#{MODULE_OUTPUT_PATH}/swift4",
    toolchain: 'com.apple.dt.toolchain.XcodeDefault'
  }
}.freeze

namespace :output do
  desc 'Generate Test Output'
  task :generate => 'xcode:build' do |task|
    Utils.print_header 'Generating expected test output files...'
    Utils.run(
      %(xcodebuild -workspace "#{WORKSPACE}.xcworkspace" -scheme "Generate Output" -configuration "#{CONFIGURATION}" test-without-building),
      task,
      xcrun: true,
      formatter: :xcpretty
    )
  end

  desc 'Compile modules'
  task :modules do |task|
    Utils.print_header 'Compile output modules'

    # macOS
    modules = %w[FadeSegue PrefsWindowController]
    modules.each do |m|
      Utils.print_info "Compiling module #{m}… (macos)"
      compile_module(m, :macosx, task)
    end

    # iOS
    modules = %w[CustomSegue LocationPicker SlackTextViewController]
    modules.each do |m|
      Utils.print_info "Compiling module #{m}… (ios)"
      compile_module(m, :iphoneos, task)
    end

    # delete swiftdoc
    Dir.glob("#{MODULE_OUTPUT_PATH}/*.swiftdoc").each do |f|
      FileUtils.rm_rf(f)
    end
  end

  desc 'Compile output'
  task :compile => :modules do |task|
    Utils.print_header 'Compiling template output files'

    failures = []
    Dir.glob('Tests/Expected/**/*.swift').each do |f|
      Utils.print_info "Compiling #{f}…\n"
      failures << f unless compile_file(f, task)
    end

    Utils.print_header 'Compilation report'
    if failures.empty?
      Utils.print_info 'All files compiled successfully!'
    else
      Utils.print_error 'The following files failed to compile'
      failures.each { |f| Utils.print_error " - #{f}" }
    end
    exit failures.empty?
  end

  def compile_module(m, sdk, task)
    target = SDKS[sdk]
    subtask = File.basename(m, '.*')
    commands = TOOLCHAINS.map do |_key, toolchain|
      %(--toolchain #{toolchain[:toolchain]} -sdk #{sdk} swiftc -swift-version #{toolchain[:version]} ) +
        %(-emit-module "#{MODULE_INPUT_PATH}/#{m}.swift" -module-name "#{m}" ) +
        %(-emit-module-path "#{toolchain[:module_path]}" -target "#{target}")
    end

    Utils.run(commands, task, subtask, xcrun: true)
  end

  def toolchain(f)
    if f.include?('swift3')
      TOOLCHAINS[:swift3]
    elsif f.include?('swift4')
      TOOLCHAINS[:swift4]
    end
  end

  def sdks(f)
    if f.include?('iOS')
      [:iphoneos]
    elsif f.include?('macOS')
      [:macosx]
    else
      %i[iphoneos macosx appletvos watchos]
    end
  end

  def compile_file(f, task)
    toolchain = toolchain(f)
    if toolchain.nil?
      puts "Unable to typecheck Swift 2 file #{f}"
      return true
    end
    sdks = sdks(f)

    if f.match('extra-definitions')
      definitions = %("#{MODULE_OUTPUT_PATH}/Definitions.swift" "#{MODULE_OUTPUT_PATH}/ExtraDefinitions.swift")
    else
      definitions = %("#{MODULE_OUTPUT_PATH}/Definitions.swift")
    end

    commands = sdks.map do |sdk|
      %(--toolchain #{toolchain[:toolchain]} -sdk #{sdk} swiftc -swift-version #{toolchain[:version]} ) +
        %(-typecheck -target #{SDKS[sdk]} -I #{toolchain[:module_path]} #{definitions} #{f})
    end
    subtask = File.basename(f, '.*')

    begin
      Utils.run(commands, task, subtask, xcrun: true)
      return true
    rescue
      Utils.print_error "Failed to compile #{f}!"
      return false
    end
  end
end

## [ Release a new version ] ##################################################

namespace :release do
  desc 'Create a new release on GitHub'
  task :new => [:check_versions, 'xcode:test', :create_tag, 'changelog:push_github_release']

  desc 'Check if all versions from the podspecs and CHANGELOG match'
  task :check_versions do
    results = []

    # Check if bundler is installed first, as we'll need it for the cocoapods task (and we prefer to fail early)
    `which bundler`
    results << Utils.table_result(
      $CHILD_STATUS.success?,
      'Bundler installed',
      'Please install bundler using `gem install bundler` and run `bundle install` first.'
    )

    # Guess version to release
    version = File.read('CHANGELOG.md').match(/^## (.*)$/)[1]
    Utils.table_info('Top version in CHANGELOG.md', version)

    # Check if entry present in CHANGELOG
    changelog_entry = system(%(grep -q '^## #{Regexp.quote(version)}$' CHANGELOG.md))
    results << Utils.table_result(
      changelog_entry,
      'CHANGELOG, Entry added',
      "Please add an entry for #{version} in CHANGELOG.md"
    )

    changelog_master = system("grep -qi '^## Master' CHANGELOG.md")
    results << Utils.table_result(
      !changelog_master,
      'CHANGELOG, No master',
      'Please remove entry for master in CHANGELOG'
    )

    exit 1 unless results.all?

    print "Release version #{version} [Y/n]? "
    exit 2 unless STDIN.gets.chomp == 'Y'
  end

  task :create_tag do
    version = File.read('CHANGELOG.md').match(/^## (.*)$/)[1]
    `git tag #{version} && git push --tags`
  end
end

task :default => 'xcode:test'
