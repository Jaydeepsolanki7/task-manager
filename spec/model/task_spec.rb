require "rails_helper"

RSpec.describe Task, type: :model do
  describe "association" do
    it { should belong_to(:user).class_name('User') }
  end
end