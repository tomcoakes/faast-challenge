require 'peoplecontainer'

class TestContainer; include PeopleContainer; end

describe PeopleContainer do
  
  let(:container) {TestContainer.new}
  let(:passenger) {double :passenger}

  it "can allow passengers to board" do
    container.board(passenger)
    expect(container.passengers).to eq([passenger])
  end

  it "can allow passengers to alight" do
    container.board(passenger)
    container.alight(passenger)
    expect(container.passengers).to eq([])
  end

  it "won't board any more than 40 people" do
    40.times {container.board(passenger)}
    expect{container.board(passenger)}.to raise_error("The train is full. Wait for the next one!")
  end

end