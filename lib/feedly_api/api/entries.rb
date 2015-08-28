module FeedlyApi
  module API
    def find_entry_by_id(entry_id)
      make_request("entries/#{entry_id}").first
    end
  end
end
