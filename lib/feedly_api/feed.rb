module FeedlyApi
  class Feed
    attr_reader :id, :feed_id, :language, :title, :velocity, :subscribers,
      :last_updated, :website, :score, :website_title, :estimated_engagement,
      :description, :scheme, :content_type, :twitter_screen_name, :partial,
      :twitter_followers, :facebook_username, :facebook_likes, :icon_url,
      :visual_url, :cover_url, :cover_color, :delicious_tags, :status, :topics

    def initialize(feed_hash)
      @id                   = feed_hash.fetch(:feedId)
      @feed_id              = @id
      @language             = feed_hash.fetch(:language, nil)
      @title                = feed_hash.fetch(:title)
      @velocity             = feed_hash.fetch(:velocity, nil)
      @subscribers          = feed_hash.fetch(:subscribers)
      @last_updated         = parse_time(feed_hash.fetch(:lastUpdated, nil))
      @website              = feed_hash.fetch(:website, nil)
      @website_title        = feed_hash.fetch(:websiteTitle, nil)
      @score                = feed_hash.fetch(:score, nil)
      @estimated_engagement = feed_hash.fetch(:estimatedEngagement, nil)
      @description          = feed_hash.fetch(:description, nil)
      @scheme               = feed_hash.fetch(:scheme, nil)
      @content_type         = feed_hash.fetch(:contentType, nil)
      @twitter_screen_name  = feed_hash.fetch(:twitterScreenName, nil)
      @twitter_followers    = feed_hash.fetch(:twitterFollowers, nil)
      @partial              = feed_hash.fetch(:partial, nil)
      @facebook_username    = feed_hash.fetch(:facebookUsername, nil)
      @facebook_likes       = feed_hash.fetch(:facebookLikes, nil)
      @icon_url             = feed_hash.fetch(:iconUrl, nil)
      @visual_url           = feed_hash.fetch(:visualUrl, nil)
      @cover_url            = feed_hash.fetch(:coverUrl, nil)
      @cover_color          = feed_hash.fetch(:coverColor, nil)
      @delicious_tags       = feed_hash.fetch(:deliciousTags, [])
      @status               = feed_hash.fetch(:status, nil)
      @topics               = feed_hash.fetch(:topics, [])
    end

    def items()
      []
    end

    private

    def parse_time(feedly_time)
      Time.at(feedly_time / 1000).utc.to_datetime unless feedly_time.nil?
    end
  end
end
