require 'file_parser'

RSpec.describe FileParser do
  let(:filename) { './spec/fixtures/log.txt' }

  describe '.parse' do
    context 'request_to' do
      subject { described_class.parse(/request_to=\"(\S*)\"/, filename) }

      it { is_expected.to be_an Array }

      it 'should return url information' do
        expect(subject).to include 'https://woodenoyster.com.br'
      end
    end

    context 'response_status' do
      subject { described_class.parse(/response_status=\"(\d*)\"/, filename) }

      it 'should return status information' do
        expect(subject).to include '404'
      end
    end
  end

  describe '.read_file' do
    subject { described_class.read_file(filename) }

    it { is_expected.to be_a String }

    it 'should return file content' do
      expect(subject).to include 'request'
      expect(subject).to include 'status'
    end
  end
end
