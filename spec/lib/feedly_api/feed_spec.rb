require 'spec_helper'

describe FeedlyApi::Feed do
  let(:feed_hash) {
    {
      :deliciousTags=>["diy", "lifestyle", "design", "crafts", "home", "fashion"],
      :feedId=>"feed/http://www.hellobrit.com/global/rss-feed/",
      :language=>"en",
      :title=>"Brit + Co",
      :velocity=>252.0,
      :subscribers=>9850,
      :lastUpdated=>1440637500000,
      :website=>"http://www.brit.co",
      :score=>9850.0,
      :websiteTitle=>"Brit + Co",
      :estimatedEngagement=>211,
      :description=>"Brit + Co is the leading community for creative living, making, and doing in the digital age. Browse the site for new apps, DIY projects, and hand-picked products to live a simpler, more beautiful life.",
      :scheme=>"TEXT:BASELINE:ORGANIC_SEARCH",
      :contentType=>"article",
      :twitterScreenName=>"britandco",
      :partial=>true,
      :twitterFollowers=>9453,
      :facebookUsername=>"britandco",
      :facebookLikes=>220702,
      :iconUrl=>"http://storage.googleapis.com/site-assets/-GzOR7dbXRa0OjI_qokC5uysgJG0Z7MtDcaViCyoeyg_icon-14e71b1f45a",
      :visualUrl=>"http://storage.googleapis.com/site-assets/-GzOR7dbXRa0OjI_qokC5uysgJG0Z7MtDcaViCyoeyg_visual-14e71b1f45a",
      :coverUrl=>"http://storage.googleapis.com/site-assets/-GzOR7dbXRa0OjI_qokC5uysgJG0Z7MtDcaViCyoeyg_cover-14ef98bb6bb",
      :coverColor=>"FFFFFF"
    }
  }

  describe "#new" do
    it "should create new Feed instance based on response feed hash" do
      feed = FeedlyApi::Feed.new(feed_hash)
      expect(feed.id).to                   eq "feed/http://www.hellobrit.com/global/rss-feed/"
      expect(feed.feed_id).to              eq "feed/http://www.hellobrit.com/global/rss-feed/"
      expect(feed.language).to             eq "en"
      expect(feed.velocity).to             eq 252.0
      expect(feed.subscribers).to          eq 9850
      expect(feed.last_updated).to         eq DateTime.parse("2015-08-27 01:05:00 UTC")
      expect(feed.website).to              eq "http://www.brit.co"
      expect(feed.website_title).to        eq "Brit + Co"
      expect(feed.score).to                eq 9850.0
      expect(feed.estimated_engagement).to eq 211
      expect(feed.description).to          eq "Brit + Co is the leading community for creative living, making, and doing in the digital age. Browse the site for new apps, DIY projects, and hand-picked products to live a simpler, more beautiful life."
      expect(feed.scheme).to               eq "TEXT:BASELINE:ORGANIC_SEARCH"
      expect(feed.content_type).to         eq "article"
      expect(feed.twitter_screen_name).to  eq "britandco"
      expect(feed.twitter_followers).to    eq 9453
      expect(feed.partial).to              eq true
      expect(feed.facebook_username).to    eq "britandco"
      expect(feed.facebook_likes).to       eq 220702
      expect(feed.icon_url).to             eq "http://storage.googleapis.com/site-assets/-GzOR7dbXRa0OjI_qokC5uysgJG0Z7MtDcaViCyoeyg_icon-14e71b1f45a"
      expect(feed.visual_url).to           eq "http://storage.googleapis.com/site-assets/-GzOR7dbXRa0OjI_qokC5uysgJG0Z7MtDcaViCyoeyg_visual-14e71b1f45a"
      expect(feed.cover_url).to            eq "http://storage.googleapis.com/site-assets/-GzOR7dbXRa0OjI_qokC5uysgJG0Z7MtDcaViCyoeyg_cover-14ef98bb6bb"
      expect(feed.cover_color).to          eq "FFFFFF"
      expect(feed.delicious_tags).to       eq ["diy", "lifestyle", "design", "crafts", "home", "fashion"]
      expect(feed.status).to               be nil
      expect(feed.topics).to               eq []
    end
  end

  describe "#items" do
    it "should return list of FeedItems" do
      feed = FeedlyApi::Feed.new(feed_hash)
      expect(feed.items).to eq []
    end
  end
end
