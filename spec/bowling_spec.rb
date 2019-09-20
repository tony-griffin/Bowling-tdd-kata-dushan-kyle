

class Bowling
    def score(pins)
        return 0 if pins.nil?
         pins.sum
    end
end


describe Bowling do
    
   it "scores no balls as 0" do
    expect(subject.score(nil)).to eq(0)
   end

   it "scores one missed ball as 0" do
    expect(subject.score([0])).to eq(0)
   end

   it "scores one struck pin as 1" do
    expect(subject.score([1])).to eq(1)
   end

   it "scores two struck pins as 2" do
    expect(subject.score([2])).to eq(2)
   end

   it "scores three struck pins as 3" do
    expect(subject.score([3])).to eq(3)
   end

   it "scores two missed balls as 0" do
    expect(subject.score([0,0])).to eq(0)
   end

   it "scores 1 miss ball and 1 hit pin" do
    expect(subject.score([0,1])).to eq(1)
   end



end

