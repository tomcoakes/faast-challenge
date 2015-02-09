require 'passenger'

describe Passenger do
  
  let(:passenger) {Passenger.new}
  let(:coach) {double :coach}
  let(:station) {double :station}

  it "can board a train" do
    expect(coach).to receive(:push)
    expect(station).to receive(:delete)
    passenger.board_train(coach, station)
  end

  it "can alight from a coach" do
    expect(coach).to receive(:delete)
    expect(station).to receive(:push)
    passenger.alight(coach, station)
  end

  it "can enter a station" do
    expect(station).to receive(:push)
    passenger.enter_station(station)
  end

  it "can leave a station" do
    expect(station).to receive(:delete)
    passenger.leave_station(station)
  end

end