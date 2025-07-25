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

namespace :spec do
  RSpec::Core::RakeTask.new(:compatibility) do |t|
    t.rspec_opts = '--tag compatibility'
  end
end

task :default => :spec
task :test    => [:spec, 'spec:compatibility']

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

directory 'vendor/syscalls'
directory 'vendor/syscalls/linux' => 'vendor/syscalls'

file 'vendor/syscalls/linux/syscall_32.tbl' => 'vendor/syscalls/linux' do
  sh 'wget', '-O', 'vendor/syscalls/linux/syscall_32.tbl', 'https://raw.githubusercontent.com/torvalds/linux/refs/heads/master/arch/x86/entry/syscalls/syscall_32.tbl'
end

file 'vendor/syscalls/linux/syscall_64.tbl' => 'vendor/syscalls/linux' do
  sh 'wget', '-O', 'vendor/syscalls/linux/syscall_64.tbl', 'https://raw.githubusercontent.com/torvalds/linux/refs/heads/master/arch/x86/entry/syscalls/syscall_64.tbl'
end

file 'vendor/syscalls/linux/syscalls.h' => 'vendor/syscalls/linux' do
  sh 'wget', '-O', 'vendor/syscalls/linux/syscalls.h', 'https://raw.githubusercontent.com/torvalds/linux/refs/heads/master/include/linux/syscalls.h'
end

directory 'vendor/syscalls/freebsd'

file 'vendor/syscalls/freebsd/syscalls.master' => 'vendor/syscalls/freebsd' do
  sh 'wget', '-O', 'vendor/syscalls/freebsd/syscalls.master', 'https://cgit.freebsd.org/src/plain/sys/kern/syscalls.master'
end

directory 'vendor/syscalls/netbsd'

file 'vendor/syscalls/netbsd/syscalls.master' => 'vendor/syscalls/netbsd' do
  sh 'wget', '-O', 'vendor/syscalls/netbsd/syscalls.master', 'https://cvsweb.netbsd.org/bsdweb.cgi/~checkout~/src/sys/kern/syscalls.master?content-type=text%2Fplain'
end

directory 'vendor/syscalls/openbsd'

file 'vendor/syscalls/openbsd/syscalls.master' => 'vendor/syscalls/openbsd' do
  sh 'wget', '-O', 'vendor/syscalls/openbsd/syscalls.master', 'https://raw.githubusercontent.com/openbsd/src/refs/heads/master/sys/kern/syscalls.master'
end

directory 'vendor/syscalls/macos'

file 'vendor/syscalls/macos/syscalls.master' => 'vendor/syscalls/macos' do
  sh 'wget', '-O', 'vendor/syscalls/macos/syscalls.master', 'https://raw.githubusercontent.com/apple-oss-distributions/xnu/refs/heads/main/bsd/kern/syscalls.master'
end

namespace :codegen do
  task(:x86    => 'vendor/isa/x86.xml')    { ruby 'codegen/x86.rb' }
  task(:x86_64 => 'vendor/isa/x86_64.xml') { ruby 'codegen/x86_64.rb' }

  namespace :syscalls do
    task :linux => %w[vendor/syscalls/linux/syscall_32.tbl vendor/syscalls/linux/syscall_64.tbl vendor/syscalls/linux/syscalls.h] do
      ruby 'codegen/syscalls/linux.rb'
    end

    task :freebsd => 'vendor/syscalls/freebsd/syscalls.master' do
      ruby 'codegen/syscalls/freebsd.rb'
    end

    task :netbsd => 'vendor/syscalls/netbsd/syscalls.master' do
      ruby 'codegen/syscalls/netbsd.rb'
    end

    task :openbsd => 'vendor/syscalls/openbsd/syscalls.master' do
      ruby 'codegen/syscalls/openbsd.rb'
    end

    task :macos => 'vendor/syscalls/macos/syscalls.master' do
      ruby 'codegen/syscalls/macos.rb'
    end
  end
end

rule %r{\Aspec/x86/instructions/fixtures/[^.]+\.o\z} => [->(path) { path.sub(/\.o\z/,'.s') }] do |t|
  sh 'as', '--32', '-o', t.name, t.source
end

rule %r{\Aspec/x86_64/instructions/fixtures/[^.]+\.o\z} => [->(path) { path.sub(/\.o\z/,'.s') }] do |t|
  sh 'as', '--64', '-o', t.name, t.source
end

rule %r{\Aspec/(?:x86|x86_64)/instructions/fixtures/[^.]+\.bin\z} => [->(path) { path.sub(/\.bin\z/,'.o') }] do |t|
  sh 'objcopy', '-O', 'binary', '--only-section=.text', t.source, t.name
end

multitask 'spec:fixtures:x86' => Dir.glob('spec/x86/instructions/fixtures/*.s').map { |path| path.sub(/\.s\z/,'.bin') }

multitask 'spec:fixtures:x86_64' => Dir.glob('spec/x86_64/instructions/fixtures/*.s').map { |path| path.sub(/\.s\z/,'.bin') }

task 'spec:fixtures' => %w[spec:fixtures:x86 spec:fixtures:x86_64]
