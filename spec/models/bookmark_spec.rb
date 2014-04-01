require 'spec_helper'

describe Bookmark do
  subject { create(:bonar) }

  context '#create' do
    it 'creates new Site' do
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

    it 'grabs metadata' do
      expect(subject.title).not_to be_empty
      expect(subject.keywords).not_to be_empty
      expect(subject.description).not_to be_empty
    end
  end
end
