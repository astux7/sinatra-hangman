require 'spec_helper'

describe "Hangman" do 
let(:hangman) { Hangman.new}

  it 'should init with players' do
    expect(hangman.lives).to be > 0
  end 
  it 'should have easy level at begining' do
    expect(hangman.complexity).to eq(18)
  end

end
 