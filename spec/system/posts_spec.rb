require 'rails_helper'

RSpec.describe "Posts", type: :system do
  before do
    driven_by(:rack_test)
  end

  describe 'index page' do
    context 'when displaying idex page' do
      let!(:post) { create(:post) }
      it 'displayed the content' do
        visit posts_index_path
        expect(page).to have_content post.content
      end
    end
  end
end
