require '../src/length'
describe Length do
  before do
    @length_one = Length.new 5
    @length_two = Length.new 4
  end
  it 'should_be_true_for_same_values' do

    length_two = Length.new 5
    is_equal = @length_one.is_equal(length_two)

    expect(is_equal).to eq true
  end
  it 'should_be_false_for_different_values' do

    is_equal = @length_one.is_equal(@length_two)

    expect(is_equal).to eq false
  end
  it 'should_return_sum' do
    @length_two = @length_one.plus(@length_two)

    expect(@length_two.value).to eq 9
    end
  it 'should_subtract' do
    @length_two = @length_one.subtract(@length_two)

    expect(@length_two.value).to eq 1
  end
end