require 'rails_helper'

RSpec.describe Author, type: :model do
  it 'instance of Author should be created' do

    author = Author.new(
        first_name: 'Alan',
        last_name: 'Turing',
        homepage:  'http://wikipedia.org/Alan_Turing')

    expect(author.first_name).to eq('Alan')
    expect(author.last_name).to eq('Turing')
    expect(author.homepage).to eq('http://wikipedia.org/Alan_Turing')

  end

  it 'author should have method name returning full name' do
    author = Author.new(first_name: 'Alan', last_name: 'Turing')

    full_name = author.name()
    expect(full_name).to eq('Alan Turing')
  end

  it 'instance should have last_name' do
    author = Author.new(first_name: 'Alan', homepage: 'http://wikipedia.org/Alan_Turing')
    expect(author).to_not be_valid
  end
end
