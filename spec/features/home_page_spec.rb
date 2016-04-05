require 'rails_helper'

feature 'home page' do
    scenario 'welcome message'
        visit('/')
        expect (page).to have_content('Welcome')
    end
end
