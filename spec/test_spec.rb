require_relative '../lib/love'
require_relative '../lib/inspire'

describe InspireQuotes do
  context '#inspire_quotes' do
    let(:inspire_req) { InspireQuotes.new }
    let(:inspire_string) { inspire_req.inspire_quotes }

    it 'should return a string' do
      expect(inspire_string.class).to eq(String)
    end
  end
end

describe LoveQuotes do
  context '#luv_json & luv' do
    let(:love_req) { LoveQuotes.new }
    let(:love_string) { love_req.luv }

    it 'should return a string' do
      expect(love_string.class).to eq(String)
    end
  end
end
