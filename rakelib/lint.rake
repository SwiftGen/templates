namespace :lint do
  desc 'Install swiftlint'
  task :install do |task|
    if !system('which swiftlint > /dev/null')
      url = 'https://github.com/realm/SwiftLint/releases/download/0.16.1/SwiftLint.pkg'
      tmppath = '/tmp/SwiftLint.pkg'

      Utils.run([
        "curl -Lo #{tmppath} #{url}",
        "sudo installer -pkg #{tmppath} -target /"
      ], task)
    end
  end
  
  desc 'Lint the tests'
  task :tests => :install do |task|
    Utils.print_info 'Linting the unit test code'
    Utils.run(%Q(swiftlint lint --no-cache --strict --path "#{TEST_PATH}"), task)
  end
  
  desc 'Lint the output'
  task :output => :install do |task|
    Utils.print_info 'Linting the template output code'
    Utils.run(%Q(swiftlint lint --no-cache --strict --path Tests/Expected), task)
  end
end
