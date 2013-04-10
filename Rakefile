# require 'ritual'
require 'rake/testtask'
require "bundler/gem_tasks"


require 'rake/extensiontask'

t = Rake::ExtensionTask.new('casty')

t.instance_variable_set :@task_dependencies, [:ext]

Rake::TestTask.new do |t|
  t.libs << "test"
  t.test_files = FileList['test/*_test.rb']
  t.verbose = true
end

# extension

# file 'ext/cast.so' => FileList['ext/*.c', 'ext/yylex.c'] do |t|
#   FileUtils.cd 'ext' do
#     ruby 'extconf.rb'
#     sh 'make'
#   end
# end

file 'ext/casty/yylex.c' => 'ext/casty/yylex.re' do |t|
  sh "re2c #{t.prerequisites[0]} > #{t.name}"
end

file 'lib/casty/c.tab.rb' => 'lib/casty/c.y' do |t|
  sh "racc #{t.prerequisites[0]}"
end

generated_files = 'ext/casty/yylex.c', 'lib/casty/c.tab.rb'

desc "generate_files"
task :generate_files => generated_files

file 'ext/casty/extconf.rb' => :generate_files
task :build => :generate_files

task :test => :compile

task :default => :test

CLEAN.include(*generated_files)
