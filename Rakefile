def xcpretty(cmd, task)
  name = task.name.gsub(/:/,"_")
  if ENV['CI']
    sh "set -o pipefail && #{cmd} | tee \"#{ENV['CIRCLE_ARTIFACTS']}/#{name}_raw.log\" | xcpretty --color --report junit --output \"#{ENV['CIRCLE_TEST_REPORTS']}/xcode/#{name}.xml\""
  elsif `which xcpretty` && $?.success?
    sh "set -o pipefail && #{cmd} | xcpretty -c"
  else
    sh cmd
  end
end

def plain(cmd, task)
  name = task.name.gsub(/:/,"_")
  if ENV['CI']
    sh "set -o pipefail && #{cmd} | tee \"#{ENV['CIRCLE_ARTIFACTS']}/#{name}_raw.log\""
  else
    sh cmd
  end
end

namespace :xcode do
  desc 'Build using Xcode'
  task :build do |task|
    xcpretty("xcodebuild -workspace Tests/Templates.xcworkspace -scheme Tests build-for-testing", task)
  end

  desc 'Run Xcode Unit Tests'
  task :test => :build do |task|
    xcpretty("xcodebuild -workspace Tests/Templates.xcworkspace -scheme Tests test-without-building", task)
  end
end

namespace :lint do
  desc 'Install swiftlint'
  task :install do |task|
    swiftlint = `which swiftlint`
    
    if !(swiftlint && $?.success?)
      url = 'https://github.com/realm/SwiftLint/releases/download/0.16.1/SwiftLint.pkg'
      tmppath = '/tmp/SwiftLint.pkg'

      plain("curl -Lo #{tmppath} #{url}", task)
      plain("sudo installer -pkg #{tmppath} -target /", task)
    end
  end

  desc 'Lint the test code'
  task :tests => :install do |task|
    plain("swiftlint lint --no-cache --strict --path Tests/TestSuites", task)
  end
  
  desc 'Lint the output code'
  task :output => :install do |task|
    plain("swiftlint lint --no-cache --strict --path Tests/Expected", task)
  end
end

namespace :output do
  desc 'Compile modules'
  task :modules do |task|
    plain("./Scripts/compile-modules.sh", task)
  end

  desc 'Compile output'
  task :compile => :modules do |task|
    plain("./Scripts/compile-output.sh", task)
  end
end

task :default => "xcode:test"
