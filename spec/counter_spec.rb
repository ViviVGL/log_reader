require 'counter'

RSpec.describe Counter do
  describe '.count' do
    subject { described_class.count(['a', 'a', 'a', 'b', 'b']) }

    it { is_expected.to be_a Hash }

    it 'should return info count' do
      expect(subject).to include("a" => 3, "b" => 2)
    end
  end
end
