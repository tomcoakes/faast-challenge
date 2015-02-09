require 'coach'

describe Coach do

  let(:passenger) {double :passenger}
  let(:coach) {Coach.new}
  let(:station) {double :station}

  before do
    allow(station).to receive(:remove_passenger).and_return(passenger)
  end

  it "won't board any more than 40 people" do
    40.times {coach.board_from(station)}
    expect{ coach.board_from(station) }.to raise_error("We've reached maximum capacity!")
  end

end