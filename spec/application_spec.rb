require './lib/application'

RSpec.describe Application do
  describe '#aplication' do
    it 'convert_launch' do
      allow($stdin).to receive(:gets).and_return('1', '10')
      expect(Application.new.convert_launch).to eq %w[K F]
    end
  end
end
