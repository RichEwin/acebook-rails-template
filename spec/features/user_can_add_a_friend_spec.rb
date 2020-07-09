# frozen_string_literal: true
# rubocop:disable all

require 'rails_helper'

RSpec.describe 'friendslist', type: :feature do
  it 'Can view friends page' do
    log_in_eman
    click_link 'Emanuele'
    expect(page).to have_content('About')
  end
end
