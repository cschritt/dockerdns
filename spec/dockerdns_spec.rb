require_relative '../lib/dockerdns.rb'

require "codeclimate-test-reporter"
CodeClimate::TestReporter.start

describe DockerDNS do

  before do
    @config = {
      "domain" => "example.com",
      "reversezone" => "com.example.in-addr.arpa",
      "ttl" => "600",
      "dockerurl" => "tcp://127.0.0.1:9000"
    }
    @dockerdns = DockerDNS.new(@config)
  end

  it "should have a domain" do
    expect(@dockerdns.domain).to eq @config["domain"]
  end

  it "should have a reversezone" do
    expect(@dockerdns.reversezone).to eq @config["reversezone"]
  end

  it "should have a ttl" do
    expect(@dockerdns.ttl).to eq @config["ttl"]
  end

  it "should have a dockerurl" do
    expect(@dockerdns.docker_url).to eq @config["dockerurl"]
  end
end
