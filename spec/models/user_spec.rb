require 'rails_helper'

describe User do
  let!(:user) { create_user }

  describe 'assocations' do
    let!(:post) { create_post }

    describe '#posts' do
      it 'returns all associated posts' do
        expect(user.posts).to eq(Array(post))
      end
    end
  end
end
