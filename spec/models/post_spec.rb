require 'rails_helper'

describe Post do
  let!(:user) { create_user }
  let!(:post) { create_post }

  describe 'assocations' do
    let!(:comment) { create_comment }

    describe '#comments' do
      it 'returns all associated comments' do
        expect(post.comments).to eq(Array(comment))
      end
    end
  end
end
