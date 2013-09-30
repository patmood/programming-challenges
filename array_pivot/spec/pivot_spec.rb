require 'rspec'
require_relative '../pivot'

describe '#pivot' do
  it 'works for single element' do
    pivot([2]).should == 0
  end

  it 'doesnt find index for 2 elements' do
    pivot([5,2]).should == "No index found"
  end

  it 'finds index for simple 3 element case' do
    pivot([1,1,1]).should == 1
  end

  it 'no index for simple 3 element case' do
    pivot([1,1,2]).should == "No index found"
  end

  it 'handles standard case' do
    pivot([1, 4, 6, 3, 2]).should == 2
  end

  it 'handles no index' do
    pivot([1, 4, 6, 3, 20]).should == "No index found"
  end
end
