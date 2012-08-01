require 'spec_helper'

describe Mutant::Mutator::Literal::String, '.each' do
  let(:random_string) { 'bar' }

  context 'string literal' do
    let(:source) { '"foo"' }

    let(:mutations) do
      %W(nil "#{random_string}")
    end

    before do
      Mutant::Random.stub(:hex_string => random_string)
    end

    it_should_behave_like 'a mutation enumerator method'
  end
end
