require './lib/love'
require './lib/inspire'

describe InspireQuotes do
  context '#inspire_quotes & json_rspec' do 
  let(:inspire_req) {InspireQuotes.new}
  let(:inspire_json) {inspire_req.json_rspec}
  let(:inspire_string) {inspire_req.inspire_quotes}

  it 'should return json' do
    expect(inspire_json.class).to eql(Hash)
  end

   it 'should return a string' do
      expect(inspire_string.class).to eql(String)
   end
  end
end

describe LoveQuotes do
  context '#luv_json & luv' do 
  let(:love_req) {LoveQuotes.new}
  let(:love_json) {love_req.luv_json}
  let(:love_string) {love_req.luv}

  it 'should return json' do
    expect(love_json.class).to eql(Hash)
  end

   it 'should return a string' do
      expect(love_string.class).to eql(String)
   end
  end
end
