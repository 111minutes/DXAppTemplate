require 'rubygems'
require 'xcoder'
require "yaml"

desc "Setup project environment"
task :setup do
    if File.exists?("./Pods")
        puts `pod update`
    else 
        puts `pod install`
    end
end

desc "Show current Developer directory"
task :developer_info do
    system "echo current Developer directory: `xcode-select -print-path`"
    system "xcodebuild -showsdks | grep iphone"
    system "xcodebuild -list -workspace *.xcworkspace"
    system "xcodebuild -list"
end

task :build do
    config = YAML.load_file('support/config.yml')
    common = config["common"]
    
    ic = config["identity"]["customer"]
    bc = config["build"]

    Xcode::Keychain.temp do |keychain|
        keychain.import "support/#{ic["certificate"]}", ic["password"]

        workspace = Xcode.workspace(bc["workspace"])
        scheme = workspace.scheme(bc["scheme"])

        builder = scheme.builder
        builder.keychain = keychain    
        builder.identity = keychain.identities.first
        builder.profile = "support/#{ic["profile"]}"
        builder.clean
        builder.build
        builder.package
    end
    
end
