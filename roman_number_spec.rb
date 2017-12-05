require_relative '../lib/rome_converter'
require 'rails_helper'

RSpec.describe RomeConverter do
  
  it "Error,wrong conversion from rome!" do
	expect(RomeConverter.to_dec("V")).to eq(5)
  end
  it "Error,wrong conversion from rome!" do
	expect(RomeConverter.to_dec("I")).to eq(1)
  end
   it "Error,wrong conversion from rome!" do
	expect(RomeConverter.to_dec("II")).to eq(2)
  end
   it "Error,wrong conversion from rome!" do
	expect(RomeConverter.to_dec("X")).to eq(10)
  end
   it "Error,wrong conversion from rome!" do
	expect(RomeConverter.to_dec("IX")).to eq(9)
  end 

   it "Error,wrong conversion from rome!" do
	expect(RomeConverter.to_dec("L")).to eq(50)
  end

  it "Error,wrong conversion from rome!" do
	expect(RomeConverter.to_dec("LXIX")).to eq(69)
  end 
  it "Error,wrong conversion from rome!" do
	expect(RomeConverter.to_dec("M")).to eq(1000)
  end
  it "Error,wrong conversion from rome!" do
	expect(RomeConverter.to_dec("CM")).to eq(900)
  end
  it "Error,wrong conversion from rome!" do
	expect(RomeConverter.to_dec("XC")).to eq(90)
  end
  it "Error,wrong conversion from decimal!" do
	expect(RomeConverter.to_rome(5)).to eq("V")
  end
  it "Error,wrong conversion from decimal!" do
	expect(RomeConverter.to_rome(1)).to eq("I")
  end
  it "Error,wrong conversion from decimal!" do
	expect(RomeConverter.to_rome(2)).to eq("II")
  end
   it "Error,wrong conversion from decimal!" do
	expect(RomeConverter.to_rome(10)).to eq("X")
  end
    it "Error,wrong conversion from decimal!" do
	expect(RomeConverter.to_rome(9)).to eq("IX")
  end
     it "Error,wrong conversion from decimal!" do
	expect(RomeConverter.to_rome(50)).to eq("L")
  end
      it "Error,wrong conversion from decimal!" do
	expect(RomeConverter.to_rome(69)).to eq("LXIX")
  end
       it "Error,wrong conversion from decimal!" do
	expect(RomeConverter.to_rome(1000)).to eq("M")
  end
	 it "Error,wrong conversion from decimal!" do
	expect(RomeConverter.to_rome(900)).to eq("CM")
  end
	 it "Error,wrong conversion from decimal!" do
	expect(RomeConverter.to_rome(90)).to eq("XC")
  end

  it "Error,decimal number too big!" do
	expect(RomeConverter.to_rome(5000)).to int_arg.should be < 4998
  end

  it "Error,decimal number cant be negative!" do
	expect(RomeConverter.to_rome(-1)).to int_arg.should be > 0
  end
   it "Error,romans dont have zero!" do
	expect(RomeConverter.to_rome(0)).to int_arg.should be > 0
  end
    it "Error,cant have 4 of the same characters in roman numbers!" do
	expect(RomeConverter.to_dec("XXXX")).to raise_error
  end
end
