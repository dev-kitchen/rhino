require 'rails_helper'

RSpec.describe Chapter, type: :model do
  it { is_expected.to validate_presence_of(:title) }
  it { is_expected.to validate_presence_of(:number) }
  it { is_expected.to validate_presence_of(:book) }

  it { is_expected.to belong_to(:book) }
end
