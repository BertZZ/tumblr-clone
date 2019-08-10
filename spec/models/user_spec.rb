require 'rails_helper'

describe User do
  subject { FactoryBot.create(:user)}

  it { should validate_presence_of(:username) }
  it { should validate_length_of(:username) }
  it { should validate_uniqueness_of(:username) }

  it { should validate_presence_of(:email) }
  it { should validate_uniqueness_of(:email) }

  it 'does not store the password in plain text' do
    expect(subject.password_digest).not_to eq('Potato123!')
  end
end
