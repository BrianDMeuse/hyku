require 'spec_helper'

RSpec.describe NilSolrEndpoint do
  let(:instance) { described_class.new }
  describe "#ping" do
    subject { instance.ping }
    it { is_expected.to be false }
  end
end
