require 'train'

describe Train do
  let(:train) {Train.new}
  let(:coach) {double :coach}

    it "can attach coaches" do
      train.attach_coach(coach)
      expect(train.attached_coaches.length).to eq(1)
    end

    it "can detach the rear coach" do
      train.attach_coach(coach)
      train.detach_rear_coach
      expect(train.attached_coaches.length).to eq(0)
    end

    it "can hold up to 5 coaches" do
      5.times {train.attach_coach(coach)}
      expect{train.attach_coach(coach)}.to raise_error("You can't connect any more coaches.")
    end
end