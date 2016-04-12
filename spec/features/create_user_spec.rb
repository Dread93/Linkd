require 'rails_helper'

feature 'create new user' do
    scenario 'create new user with valid data'
        visit('/')
        click_on('Sign Up')
        
        # User_f refers to the user field
        fill_in('User_f', with: 'User')
        fill_in('Password_f', with: 'Password')
        select('Public', from: 'Privacy')
        check('Featured User')
        attach_file('Profile image', "#{Rails.root}/spec/fixtures/profile_image.png")
        click_on('Create Profile')
        
        expect(page).to have_content('Profile has been created')
        expect(User_f.last.User).to eq('User')
end
