require './lib/convert_temperature'

RSpec.describe ConvertTemperature do
  describe '#converter' do
    context 'F to C convert' do
      subject { ConvertTemperature.new('F', 'C', 10).convert }
      it { is_expected.to eq(-12.32) }
    end
    context 'F to K convert' do
      subject { ConvertTemperature.new('F', 'K', 10).convert }
      it { is_expected.to eq(260.83) }
    end
    context 'C to F convert' do
      subject { ConvertTemperature.new('C', 'F', 10).convert }
      it { is_expected.to eq 50.0 }
    end
    context 'C to K convert' do
      subject { ConvertTemperature.new('C', 'K', 10).convert }
      it { is_expected.to eq 283.15 }
    end
    context 'K to C convert' do
      subject { ConvertTemperature.new('K', 'C', 10).convert }
      it { is_expected.to eq(-263.15) }
    end
    context 'K to F convert' do
      subject { ConvertTemperature.new('K', 'F', 10).convert }
      it { is_expected.to eq(-441.67) }
    end
  end
end
