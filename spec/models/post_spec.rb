require 'rails_helper'

RSpec.describe Post, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end

describe Post do
  subject  { post.valid? }
  context "when displaying lndex page" do
    let(:post) {build(:post, content: nil)}
    it { is_expected.to be_falsy}
  end
end