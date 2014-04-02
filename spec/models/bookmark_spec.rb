require 'spec_helper'

describe Bookmark, :vcr do
  context '#create' do
    subject { create(:bonar) }

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

  context '#search' do
    let!(:bonar) { create(:bonar) }

    it 'by title' do
      expect(Bookmark.search('bonar').first).to eq(bonar)
    end

    it 'by keywords' do
      expect(Bookmark.search('študentski boni').first).to eq(bonar)
    end

    it 'by description' do
      expect(Bookmark.search('ponudniki').first).to eq(bonar)
    end

    it 'by URL' do
      expect(Bookmark.search('nar.si').first).to eq(bonar)
    end

    it 'by tags' do
      expect(Bookmark.search('bonbon').first).to eq(bonar)
      expect(Bookmark.search('onbo').first).to eq(bonar)
    end

    it 'only displays item once' do
      expect(Bookmark.search('bon').count).to eq(1)
    end
  end
end
