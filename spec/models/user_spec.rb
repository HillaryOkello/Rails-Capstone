require 'rails_helper'

RSpec.describe User, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  it 'creates user correctly' do
    @user = User.new(name: 'Hillary')
    expect(@user.valid?).to be true
  end
end
