require 'player'

describe Player do

  let(:player) {described_class.new}
  name = "Joe"
  it 'has a name' do
    player.name = name
    expect(player.name).to eq name

  end


end
