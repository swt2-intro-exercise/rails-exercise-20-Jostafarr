require 'rails_helper'

describe 'author edit page', type: :feature do

  it 'update should update' do

    author = Author.new(
        first_name: 'Alan',
        last_name: 'Turing',
        homepage:  'http://wikipedia.org/Alan_Turing')

    @author.update(first_name: 'Torben')
    @author.reload

    expect(author.first_name).to eq('Torben')
  end
end