require 'spec_helper'
require 'file_parser'

RSpec.describe FileParser do
  describe '.parse' do
    subject { described_class.parse(/request_to=\"(\S*)\"/) }

    it { is_expected.to be_an Array }
  end
end
