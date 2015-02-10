require 'station'

describe Station do

  let(:station) {Station.new}
  let(:passenger) {double :passenger}
  let(:coach) {double :coach}

  before do
    allow(coach).to receive(:remove_passenger).and_return(passenger)
  end

  it "has a max capacity of 500 passengers" do
    500.times {station.board_from(coach)}
    expect{ station.board_from(coach) }.to raise_error("We've reached maximum capacity!")
  end

  it "allows passengers to enter the station" do
    station.enter_station(passenger)
    expect(station.passenger_count).to eq(1)
  end

end