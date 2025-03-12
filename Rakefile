require 'rubygems'

begin
  require 'bundler'
rescue LoadError => e
  warn e.message
  warn "Run `gem install bundler` to install Bundler."
  exit e.status_code
end

begin
  Bundler.setup(:development)
rescue Bundler::BundlerError => e
  warn e.message
  warn "Run `bundle install` to install missing gems"
  exit e.status_code
end

require 'rake'

require 'rubygems/tasks'
Gem::Tasks.new(sign: {checksum: true, pgp: true})

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new
task :default => :spec
task :test    => :spec

require 'yard'
YARD::Rake::YardocTask.new

require 'kramdown/man/task'
Kramdown::Man::Task.new

require 'command_kit/completion/task'
CommandKit::Completion::Task.new(
  class_file:  'ronin/asm/cli',
  class_name:  'Ronin::ASM::CLI',
  output_file: 'data/completions/ronin-asm'
)

task :setup => %w[man command_kit:completion]

directory 'vendor/cache'
directory 'vendor/isa'

file 'vendor/isa/x86.xml' => 'vendor/isa' do
  sh 'wget', '-O', 'vendor/isa/x86.xml', 'https://raw.githubusercontent.com/Maratyszcza/Opcodes/refs/heads/master/opcodes/x86.xml'
end

file 'vendor/isa/x86_64.xml' => 'vendor/isa' do
  sh 'wget', '-O', 'vendor/isa/x86_64.xml', 'https://raw.githubusercontent.com/Maratyszcza/Opcodes/refs/heads/master/opcodes/x86_64.xml'
end

file 'vendor/cache/ISA_A64_xml_v88A-2021-12.tar.gz' => 'vendor/cache' do
  sh 'wget', '-O', 'vendor/cache/ISA_A64_xml_v88A-2021-12.tar.gz', 'https://developer.arm.com/-/media/developer/products/architecture/armv8-a-architecture/2021-12/ISA_A64_xml_v88A-2021-12.tar.gz'
end

file 'vendor/isa/arm64.xml' => %w[vendor/cache/ISA_A64_xml_v88A-2021-12.tar.gz vendor/isa] do
  sh 'tar', '-C', 'vendor/cache', '--strip-components=1', '-xzf', 'vendor/cache/ISA_A64_xml_v88A-2021-12.tar.gz', 'ISA_A64_xml_v88A-2021-12/onebigfile.xml'
  sh 'mv', 'vendor/cache/onebigfile.xml', 'vendor/isa/arm64.xml'
end

file 'vendor/cache/SysReg_xml_v86A-2020-06.tar.gz' => 'vendor/cache' do
  sh 'wget', '-O', 'vendor/cache/SysReg_xml_v86A-2020-06.tar.gz', 'https://developer.arm.com/-/media/developer/products/architecture/armv8-a-architecture/2020-06/SysReg_xml_v86A-2020-06.tar.gz'
end

file 'vendor/isa/arm64-sysregs.xml' => %w[vendor/cache/SysReg_xml_v86A-2020-06.tar.gz vendor/isa] do
  sh 'tar', '-C', 'vendor/cache', '--strip-components=1', '-xzf', 'vendor/cache/SysReg_xml_v86A-2020-06.tar.gz', 'SysReg_xml_v86A-2020-06/enc_index.xml'
  sh 'mv', 'vendor/cache/enc_index.xml', 'vendor/isa/arm64-sysregs.xml'
end

namespace :codegen do
  task(:x86    => 'vendor/isa/x86.xml')    { ruby 'codegen/x86.rb' }
  task(:x86_64 => 'vendor/isa/x86_64.xml') { ruby 'codegen/x86_64.rb' }
end
