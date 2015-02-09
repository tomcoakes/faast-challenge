require 'station'

describe Station do
  let(:station) {Station.new}
  let(:passenger) {double :passenger}

  it "has a max capacity of 500" do
    500.times {station.board(passenger)}
    expect{ station.board(passenger) }.to raise_error("We've reached maximum capacity!")
  end
end