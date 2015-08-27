module FeedlyApi
  module API
    def find_feed_by_id(feed_id)
      feed_id = CGI.escape(feed_id)
      response = make_request("feeds/#{feed_id}")

      Feed.new(response)
    end
  end
end
