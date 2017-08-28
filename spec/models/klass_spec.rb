# == Schema Information
#
# Table name: klasses
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  subject    :string           not null
#  level      :integer          default(100)
#  credit     :integer          default(1)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Klass, type: :model do
 
    describe '.new' do
        it 'instantiates a Klass object' do
            k =  Klass.new
            expect(k.is_a?(Klass)).to be true
            expect(k.attributes.keys.count).to eql(7)
        end
    end
     
    describe '#save' do
        context 'happy path' do
             it 'saves a Klass' do
                k = Klass.new(name: 'geometry', subject: 'math')
                k.save
                
                expect(k.id).to_not be_nil
                expect(k.name).to eql('geometry')
                expect(k.level).to eql(100)
                expect(k.credit).to eql(1)
                p k
            end
         
        end
         
        context 'invalid data' do
            it 'missing model - will not save' do
                k= Klass.new()
                k.save
                expect(k.id).to be_nil
                expect(k.errors[:name].first).to eql("can't be blank")
                expect(k.errors[:subject].first).to eql("can't be blank")
            end
             
        end
    end
     
     
end
