require "crypto-news-api"


namespace :news_items do
  desc "Fetch news"
  task fetch: :environment do
    api = CryptoControl::QueryAPI.new("a9991667c44e489d8d0bae800cb94fe3")
    top_news = newsapi.getTopNews
    top_news.each do |article|
      NewsItem.create(
        title: article["title"],
        primaryCategory: article["primaryCategory"],
        description: article["description"],
        url: article["url"],
        originalImageUrl: article["originalImageUrl"],
        thumbnail: article["thumbnail"],
        words: article["words"]
      )
    end
  end
end