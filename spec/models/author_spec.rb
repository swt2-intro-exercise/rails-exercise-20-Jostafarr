require 'rails_helper'

RSpec.describe Author, type: :model do
  it 'instance of Author should be created' do

    author = Author.new(
      'Alan', 
      'Turing',
       'http://wikipedia.org/Alan_Turing')

    expect(author.first_name).to eq('Alan')
    expect(author.last_name).to eq('Turing')
    expect(author.homepage).to eq('http://wikipedia.org/Alan_Turing')

  end
end
