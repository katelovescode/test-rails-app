require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { create(:user) }

  it 'validates that birthdate is a date param' do
    user.save!
    user.valid?
    expect(user.errors.messages).to eq({})
    expect(user).to be_valid
    user.birthdate = 32.6
    user.valid?
    expect(user.errors.messages.keys).to eq([:birthdate])
    expect(user).not_to be_valid
  end
end
