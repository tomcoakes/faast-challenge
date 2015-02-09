require 'peoplecontainer'

class TestContainer; include PeopleContainer; end

describe PeopleContainer do
  
  let(:container) {TestContainer.new}
  let(:passenger) {double :passenger}
  let(:other_container) {double :other_container}

  before do
    allow(other_container).to receive(:remove_passenger).and_return(passenger)
    allow(other_container).to receive(:add_passenger).and_return(passenger)
  end

  it "can allow passengers to board" do
    container.board_from(other_container)
    expect(container.passengers).to eq([passenger])
  end

  it "can allow passengers to alight" do
    container.board_from(other_container)
    container.alight_from(other_container)
    expect(container.passengers).to eq([])
  end

end