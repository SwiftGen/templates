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
  desc 'Lint the test code'
  task :code do |task|
    plain("PROJECT_DIR=Tests ./Scripts/swiftlint-code.sh", task)
  end
  
  desc 'Lint the output code'
  task :output do |task|
    plain("PROJECT_DIR=Tests ./Scripts/swiftlint-output.sh", task)
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
