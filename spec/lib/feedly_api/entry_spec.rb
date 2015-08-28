require 'spec_helper'

describe FeedlyApi::Entry do
  let(:entry_hash) {
    {
      :keywords=>["mooning", "idiot on the field", "tour de france"],
      :originId=>"693011191",
      :fingerprint=>"1524ed67",
      :id=>"gRtwnDeqCDpZ42bXE9Sp7dNhm4R6NsipqFVbXn2XpDA=_13fb9d6f274:2ac9c5:f5718180",
      :alternate=>[{:href=>"http://feeds.gawker.com/~r/deadspin/full/~3/2Fk_U50mb9s/heres-a-guy-mooning-cyclists-in-the-tour-de-france-tod-693011191", :type=>"text/html"}],
      :canonical=>[{:href=>"http://deadspin.com/heres-a-guy-mooning-cyclists-in-the-tour-de-france-tod-693011191", :type=>"text/html"}],
      :summary=>{:content=>"<p><span><iframe height=\"360\" width=\"640\" src=\"http://www.viddler.com/embed/9a99f9fa/?f=1&autoplay=false&player=mini&disablebranding=0\"></iframe></span> <p>Today was the ninth stage of the Tour de France, and it was one of the toughest, as cyclists had to traverse five mountain passes en route to Bagnères-de-Bigorre. Dan Martin became the first Irishman to win a Tour de France stage since 1992. Brit Chris Froome, who kept the yellow jersey after completing the stage, told reporters, \"That was one of the hardest days I’ve ever had on a bike.\" That's not what this post is about. <p><a href=\"http://deadspin.com/heres-a-guy-mooning-cyclists-in-the-tour-de-france-tod-693011191\">Read more...</a><img height=\"1\" width=\"1\" src=\"http://deadspin.feedsportal.com/c/34978/f/647166/s/2e531d5e/mf.gif\" border=\"0\"><div><table border=\"0\"><tr><td valign=\"middle\"><a target=\"_blank\" href=\"http://share.feedsportal.com/share/twitter/?u=http%3A%2F%2Fdeadspin.com%2Fheres-a-guy-mooning-cyclists-in-the-tour-de-france-tod-693011191&t=Here%27s+A+Guy+Mooning+Cyclists+In+The+Tour+De+France+Today\"><img src=\"http://res3.feedsportal.com/social/twitter.png\" border=\"0\"></a> <a target=\"_blank\" href=\"http://share.feedsportal.com/share/facebook/?u=http%3A%2F%2Fdeadspin.com%2Fheres-a-guy-mooning-cyclists-in-the-tour-de-france-tod-693011191&t=Here%27s+A+Guy+Mooning+Cyclists+In+The+Tour+De+France+Today\"><img src=\"http://res3.feedsportal.com/social/facebook.png\" border=\"0\"></a> <a target=\"_blank\" href=\"http://share.feedsportal.com/share/linkedin/?u=http%3A%2F%2Fdeadspin.com%2Fheres-a-guy-mooning-cyclists-in-the-tour-de-france-tod-693011191&t=Here%27s+A+Guy+Mooning+Cyclists+In+The+Tour+De+France+Today\"><img src=\"http://res3.feedsportal.com/social/linkedin.png\" border=\"0\"></a> <a target=\"_blank\" href=\"http://share.feedsportal.com/share/gplus/?u=http%3A%2F%2Fdeadspin.com%2Fheres-a-guy-mooning-cyclists-in-the-tour-de-france-tod-693011191&t=Here%27s+A+Guy+Mooning+Cyclists+In+The+Tour+De+France+Today\"><img src=\"http://res3.feedsportal.com/social/googleplus.png\" border=\"0\"></a> <a target=\"_blank\" href=\"http://share.feedsportal.com/share/email/?u=http%3A%2F%2Fdeadspin.com%2Fheres-a-guy-mooning-cyclists-in-the-tour-de-france-tod-693011191&t=Here%27s+A+Guy+Mooning+Cyclists+In+The+Tour+De+France+Today\"><img src=\"http://res3.feedsportal.com/social/email.png\" border=\"0\"></a></td></tr></table></div><br><br><a href=\"http://da.feedsportal.com/r/165665845095/u/94/f/647166/c/34978/s/2e531d5e/a2.htm\"><img src=\"http://da.feedsportal.com/r/165665845095/u/94/f/647166/c/34978/s/2e531d5e/a2.img\" border=\"0\"></a><img height=\"1\" width=\"1\" src=\"http://pi.feedsportal.com/r/165665845095/u/94/f/647166/c/34978/s/2e531d5e/a2t.img\" border=\"0\"><img height=\"1\" width=\"1\" src=\"http://feeds.feedburner.com/~r/deadspin/full/~4/2Fk_U50mb9s\">", :direction=>"ltr"},
      :author=>"Greg Howard",
      :published=>1373211900000,
      :title=>"Here's A Guy Mooning Cyclists In The Tour De France Today",
      :crawled=>1373212439156,
      :origin=>{:htmlUrl=>"http://deadspin.com", :streamId=>"feed/http://feeds.gawker.com/deadspin/full", :title=>"Deadspin"},
      :unread=>true
    }
  }

  describe "#new" do
    it "should construct valid Feed Entry" do
      entry = FeedlyApi::Entry.new(entry_hash)

      expect(entry.id).to          eq "gRtwnDeqCDpZ42bXE9Sp7dNhm4R6NsipqFVbXn2XpDA=_13fb9d6f274:2ac9c5:f5718180"
      expect(entry.origin_id).to   eq "693011191"
      expect(entry.fingerprint).to eq "1524ed67"
      expect(entry.summary).to     eq "<p><span><iframe height=\"360\" width=\"640\" src=\"http://www.viddler.com/embed/9a99f9fa/?f=1&autoplay=false&player=mini&disablebranding=0\"></iframe></span> <p>Today was the ninth stage of the Tour de France, and it was one of the toughest, as cyclists had to traverse five mountain passes en route to Bagnères-de-Bigorre. Dan Martin became the first Irishman to win a Tour de France stage since 1992. Brit Chris Froome, who kept the yellow jersey after completing the stage, told reporters, \"That was one of the hardest days I’ve ever had on a bike.\" That's not what this post is about. <p><a href=\"http://deadspin.com/heres-a-guy-mooning-cyclists-in-the-tour-de-france-tod-693011191\">Read more...</a><img height=\"1\" width=\"1\" src=\"http://deadspin.feedsportal.com/c/34978/f/647166/s/2e531d5e/mf.gif\" border=\"0\"><div><table border=\"0\"><tr><td valign=\"middle\"><a target=\"_blank\" href=\"http://share.feedsportal.com/share/twitter/?u=http%3A%2F%2Fdeadspin.com%2Fheres-a-guy-mooning-cyclists-in-the-tour-de-france-tod-693011191&t=Here%27s+A+Guy+Mooning+Cyclists+In+The+Tour+De+France+Today\"><img src=\"http://res3.feedsportal.com/social/twitter.png\" border=\"0\"></a> <a target=\"_blank\" href=\"http://share.feedsportal.com/share/facebook/?u=http%3A%2F%2Fdeadspin.com%2Fheres-a-guy-mooning-cyclists-in-the-tour-de-france-tod-693011191&t=Here%27s+A+Guy+Mooning+Cyclists+In+The+Tour+De+France+Today\"><img src=\"http://res3.feedsportal.com/social/facebook.png\" border=\"0\"></a> <a target=\"_blank\" href=\"http://share.feedsportal.com/share/linkedin/?u=http%3A%2F%2Fdeadspin.com%2Fheres-a-guy-mooning-cyclists-in-the-tour-de-france-tod-693011191&t=Here%27s+A+Guy+Mooning+Cyclists+In+The+Tour+De+France+Today\"><img src=\"http://res3.feedsportal.com/social/linkedin.png\" border=\"0\"></a> <a target=\"_blank\" href=\"http://share.feedsportal.com/share/gplus/?u=http%3A%2F%2Fdeadspin.com%2Fheres-a-guy-mooning-cyclists-in-the-tour-de-france-tod-693011191&t=Here%27s+A+Guy+Mooning+Cyclists+In+The+Tour+De+France+Today\"><img src=\"http://res3.feedsportal.com/social/googleplus.png\" border=\"0\"></a> <a target=\"_blank\" href=\"http://share.feedsportal.com/share/email/?u=http%3A%2F%2Fdeadspin.com%2Fheres-a-guy-mooning-cyclists-in-the-tour-de-france-tod-693011191&t=Here%27s+A+Guy+Mooning+Cyclists+In+The+Tour+De+France+Today\"><img src=\"http://res3.feedsportal.com/social/email.png\" border=\"0\"></a></td></tr></table></div><br><br><a href=\"http://da.feedsportal.com/r/165665845095/u/94/f/647166/c/34978/s/2e531d5e/a2.htm\"><img src=\"http://da.feedsportal.com/r/165665845095/u/94/f/647166/c/34978/s/2e531d5e/a2.img\" border=\"0\"></a><img height=\"1\" width=\"1\" src=\"http://pi.feedsportal.com/r/165665845095/u/94/f/647166/c/34978/s/2e531d5e/a2t.img\" border=\"0\"><img height=\"1\" width=\"1\" src=\"http://feeds.feedburner.com/~r/deadspin/full/~4/2Fk_U50mb9s\">"
      expect(entry.author).to      eq "Greg Howard"
      expect(entry.title).to       eq "Here's A Guy Mooning Cyclists In The Tour De France Today"
      expect(entry.published).to   eq DateTime.parse("2013-07-07T15:45:00+00:00")
      expect(entry.crawled).to     eq DateTime.parse("2013-07-07T15:53:59+00:00")
      expect(entry.keywords).to    eq ["mooning", "idiot on the field", "tour de france"]
      expect(entry.origin).to      eq({htmlUrl: "http://deadspin.com", streamId: "feed/http://feeds.gawker.com/deadspin/full", title: "Deadspin"})
      expect(entry.canonical).to   eq([{href: "http://deadspin.com/heres-a-guy-mooning-cyclists-in-the-tour-de-france-tod-693011191", type: "text/html"}])
      expect(entry.alternate).to   eq([{href: "http://feeds.gawker.com/~r/deadspin/full/~3/2Fk_U50mb9s/heres-a-guy-mooning-cyclists-in-the-tour-de-france-tod-693011191", type: "text/html"}])
      expect(entry.unread).to      be true
    end
  end
end
