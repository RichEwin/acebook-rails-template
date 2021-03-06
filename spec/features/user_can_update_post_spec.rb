# frozen_string_literal: true
# rubocop:disable all

require 'rails_helper'

RSpec.describe 'Timeline', type: :feature do
  it 'Can edit posts and view them' do
    log_in_eman
    click_link 'New post'
    fill_in 'Message', with: 'Hello world!!'
    click_button 'New Post'
    click_link('edit_post')
    fill_in 'Message', with: "I'm updated"
    click_button 'Update Post'
    expect(page).to have_content("I'm updated")
    expect(page).not_to have_content('Hello, world!')
  end

  # scenario 'Can not edit posts after 10 minutes' do
  #   visit '/signup'
  #   fill_in 'user[name]', with: 'Emanuele'
  #   fill_in 'user[email]', with: 'ema@test.com'
  #   fill_in 'user[password]', with: '12345'
  #   click_on 'Create Account'
  #   click_link 'New post'
  #   fill_in 'Message', with: 'Hello world!!'
  #   click_button 'New Post'
  #   sleep 601
  #   click_link('edit_post')
  #   fill_in 'Message', with: "I'm updated"
  #   click_button 'Update Post'
  #   expect(page).to have_content("I'm updated")
  #   expect(page).not_to have_content('Hello, world!')
  # end


end
