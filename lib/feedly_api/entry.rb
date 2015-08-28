module FeedlyApi
  class Entry
    attr_reader :id, :origin_id, :fingerprint, :keywords, :alternate, :canonical,
      :summary, :author, :published, :title, :crawled, :origin, :unread, :content,
      :recrawled, :updated, :visual, :tags, :categories, :engagement, :action_timestamp,
      :enclosure, :sid

    def initialize(entry_hash)
      @id          = entry_hash.fetch(:id)
      @origin_id   = entry_hash.fetch(:originId)
      @fingerprint = entry_hash.fetch(:fingerprint)
      @keywords    = entry_hash.fetch(:keywords, [])
      @summary     = entry_hash.fetch(:summary, {}).fetch(:content, nil)
      @author      = entry_hash.fetch(:author, nil)
      @title       = entry_hash.fetch(:title, nil)
      @tags        = entry_hash.fetch(:tags, [])
      @categories  = entry_hash.fetch(:categories, [])
      @keywords    = entry_hash.fetch(:keywords, [])
      @unread      = entry_hash.fetch(:unread, false)
      @engagement  = entry_hash.fetch(:engagement, nil)
      @sid         = entry_hash.fetch(:sid, nil)
      @enclosure   = entry_hash.fetch(:enclosure, [])
      @visual      = entry_hash.fetch(:visual, nil)
      @origin      = entry_hash.fetch(:origin, nil)
      @canonical   = entry_hash.fetch(:canonical, nil)
      @alternate   = entry_hash.fetch(:alternate, nil)

      @published        = parse_time(entry_hash.fetch(:published, nil))
      @crawled          = parse_time(entry_hash.fetch(:crawled, nil))
      @recrawled        = parse_time(entry_hash.fetch(:recrawled, nil))
      @updated          = parse_time(entry_hash.fetch(:updated, nil))
      @action_timestamp = parse_time(entry_hash.fetch(:actionTimestamp, nil))
    end

    private

    def parse_time(feedly_time)
      Time.at(feedly_time / 1000).utc.to_datetime unless feedly_time.nil?
    end
  end
end
