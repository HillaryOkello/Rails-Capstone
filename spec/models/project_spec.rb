require 'rails_helper'

RSpec.describe Project, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  subject { described_class.new(title: '', hours: 2, user_id: 1) }

  it 'Project is invalid with invalid attributes' do
    expect(subject).to_not be_valid
  end
end
