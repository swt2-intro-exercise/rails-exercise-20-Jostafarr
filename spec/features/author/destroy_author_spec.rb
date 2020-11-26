require 'rails_helper'

describe 'destroy author', type: :feature do

  it 'delete should decrease authors count' do
    author = Author.new(
        first_name: 'Alan',
        last_name: 'Turing',
        homepage:  'http://wikipedia.org/Alan_Turing')

    author.delete
    expect(Author.count).to eq(0)
  end

end