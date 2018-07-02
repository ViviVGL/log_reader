require 'printer'

RSpec.describe Printer do
  let(:data) { {'moip.test.com': '2000'} }

  describe '.normalize' do
    subject { described_class.normalize(data) }

    it { is_expected.to be_an Array }

    it 'should return the information' do
      expect(subject).to include 'moip.test.com - 2000'
    end
  end
end
