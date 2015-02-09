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

end