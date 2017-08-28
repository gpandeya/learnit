require 'rails_helper'

RSpec.feature "Klasses", type: :feature do

    context 'authenticated' do
        
        before(:each) do
          visit '/users/sign_in'
          fill_in 'user[email]', with: 'sue@aol.com'
          fill_in 'user[password]', with: 'pass1234'
          click_button 'Log in'
        end
        
        scenario 'User views the /klasses page' do
             
            klass =Klass.first
            visit '/klasses'
            expect(page).to have_text('Name')
            expect(page).to have_text('geometry')
            expect(page).to have_text(100)
                
        end
        
        scenario 'user visits the create class page' do
            
            klass =Klass.first
            visit '/klasses'
            click_link 'Create Class'
            
            expect(page).to have_text('Create New Class')
            expect(page).to have_text('Name')
            expect(page).to have_text('Subject')
            expect(page).to have_button('Create Class')
        
        end
        
        scenario 'user fills out form and attempts to create class - class will be created' do
            klass =Klass.first
            visit '/klasses'
            click_link 'Create Class'
            
            fill_in 'klass[name]', with: 'organic chemistry'
            fill_in 'klass[subject]', with: 'chemistry'
            click_button 'Create Class'
            expect(page).to have_text('Name')
            expect(page).to have_text('organic chemistry')
            expect(page).to have_text(100)
        end
        
        scenario 'user does not fill out name field in the form and attempts to create class - class will not be created' do
            klass =Klass.first
            visit '/klasses'
            click_link 'Create Class'
            
        
            fill_in 'klass[subject]', with: 'chemistry'
            click_button 'Create Class'
            
            expect(page).to have_text("can't be blank")
            expect(page).to have_text('Create New Class')
            expect(page).to have_text('Name')
            expect(page).to have_text('Subject')
            expect(page).to have_button('Create Class')
            
        end
        
     
    end
end
