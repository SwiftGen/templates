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
