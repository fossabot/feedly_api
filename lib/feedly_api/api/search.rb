module FeedlyApi
  module API
    def search_feed(query, count=20, locale=nil)
      make_request("search/feeds", {query: query, count: count, locale: locale})
    end
  end
end
