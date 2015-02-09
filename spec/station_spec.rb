require 'station'

describe Station do
  let(:station) {Station.new}
  let(:passenger) {double :passenger}
  let(:coach) {double :coach}

  before do
    allow(coach).to receive(:remove_passenger).and_return(passenger)
  end

  it "has a max capacity of 500" do
    500.times {station.board_from(coach)}
    expect{ station.board_from(coach) }.to raise_error("We've reached maximum capacity!")
  end
end