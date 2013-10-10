require_relative 'fizzbuzz_new'

describe Fixnum do
  context 'should know it is a multiple of' do
    it '3' do
      expect(3.multiple_of?(3)).to be_true
    end

    it '5' do
      expect(5.multiple_of?(5)).to be_true
    end

    it '15' do
      expect(15.multiple_of?(15)).to be_true
    end
  end

  context 'should know it is NOT a multiple of' do
    it '3' do
      expect(2.multiple_of?(3)).to be_false
    end

    it '5' do
      expect(8.multiple_of?(5)).to be_false
    end

    it '15' do
      expect(100.multiple_of?(15)).to be_false
    end
  end

  context 'should fizz' do
    it '1 into 1' do
      expect(1.fizzbuzz).to eq '1'
    end

    it '3 into Fizz' do
      expect(3.fizzbuzz).to eq 'Fizz'
    end

    it '5 into Buzz' do
      expect(5.fizzbuzz).to eq 'Buzz'
    end

    it '15 into FizzBuzz' do
      expect(15.fizzbuzz).to eq 'FizzBuzz'
    end
  end
end

describe Range do
  context 'should fizzbuzz itself' do
    it 'for (10..15)' do
      expect((10..15).fizzbuzz).to eq 'Buzz 11 Fizz 13 14 FizzBuzz'
    end
  end
end
