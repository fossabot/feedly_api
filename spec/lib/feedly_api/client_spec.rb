require 'spec_helper'

describe FeedlyApi::Client do
  let(:auth_token) { ENV['FEEDLY_TOKEN']   || 'FAKE_AUTH_TOKEN' }
  let(:user_id)    { ENV['FEEDLY_USER_ID'] || '00000000-000-NOT-VALID-a29b6679bb3c' }

  describe '#find_feed_by_id' do
    it 'returns Feed object with given feed_id' do
      client = FeedlyApi::Client.new(auth_token)
      feed   = client.find_feed_by_id("feed/http://www.hellobrit.com/global/rss-feed/")

      expect(feed.id).to    eq "feed/http://www.hellobrit.com/global/rss-feed/"
      expect(feed.title).to eq "Brit + Co"
    end
  end
end
