require 'spec_helper'

describe Bookmark do
  context '#create' do
    subject { create(:bootstrap_buttons) }
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

    it 'shortens the URL' do
      expect(subject.short_url).not_to be_empty
    end
  end
end
