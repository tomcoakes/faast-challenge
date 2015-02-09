require 'coach'

describe Coach do

  let(:passenger) {double :passenger}
  let(:coach) {Coach.new}

  it "won't board any more than 40 people" do
    40.times {coach.board(passenger)}
    expect{ coach.board(passenger) }.to raise_error("We've reached maximum capacity!")
  end

end