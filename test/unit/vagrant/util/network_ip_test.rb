require File.expand_path("../../../base", __FILE__)

require "vagrant/util/network_ip"

describe Vagrant::Util::NetworkIP do
  let(:klass) do
    Class.new do
      extend Vagrant::Util::NetworkIP
    end
  end

  describe "network address" do
    it "calculates it properly" do
      expect(klass.network_address("192.168.2.234", "255.255.255.0")).to eq("192.168.2.0")
    end
  end
end
