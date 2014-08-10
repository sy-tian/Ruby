require '../src/length'
describe Length do
  it 'should_be_true_for_same_values' do
    length_one = Length.new 3
    length_two = Length.new 3

    is_equal = length_one.is_equal(length_two)

    expect(is_equal).to eq true
    end
  it 'should_be_false_for_different_values' do
    length_one = Length.new 3
    length_two = Length.new 4

    is_equal = length_one.is_equal(length_two)

    expect(is_equal).to eq false
  end
end