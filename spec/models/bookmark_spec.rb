require 'spec_helper'

describe Bookmark do
  context '#create' do
    it 'creates new Site when saved' do
      expect(Site.count).to eq(0)
      create(:bootstrap_buttons)
      expect(Site.first.domain).to eq('getbootstrap.com')
      expect(Site.count).to eq(1)
      create(:bonar)
      expect(Site.count).to eq(2)
    end

    it 'doesnt create new Site when domains are the same' do
      expect(Site.count).to eq(0)
      create(:bootstrap_buttons)
      create(:bootstrap_images)
      expect(Site.first.domain).to eq('getbootstrap.com')
      expect(Site.count).to eq(1)
    end
  end
end
