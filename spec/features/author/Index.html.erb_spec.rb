# frozen_string_literal: true
require 'rails_helper'

describe 'author index page', type: :feature do

  it 'have link to add new authors' do
    visit authors_path
    expect(page).to have_link 'New', href: new_author_path
  end
end