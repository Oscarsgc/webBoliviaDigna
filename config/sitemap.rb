# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "http://www.boliviadigna.org"
SitemapGenerator::Sitemap.adapter = SitemapGenerator::WaveAdapter.new
SitemapGenerator::Sitemap.sitemaps_host = ENV['SITEMAP_HOST']
SitemapGenerator::Sitemap.public_path = 'tmp/'
SitemapGenerator::Sitemap.sitemaps_path = 'sitemaps/'

SitemapGenerator::Sitemap.create do

  add contacts_path, :priority => 0.8, :changefreq => 'monthly'
  add '/child_care', :priority => 0.8, :changefreq => 'monthly'
  add '/english_speaking', :priority => 0.8, :changefreq => 'monthly'
  add '/school_support', :priority => 0.8, :changefreq => 'monthly'
  add '/social_context', :priority => 0.8, :changefreq => 'monthly'
  add '/sports_school', :priority => 0.8, :changefreq => 'monthly'
  add '/startups', :priority => 0.8, :changefreq => 'monthly'
  add '/who_we_are', :priority => 0.8, :changefreq => 'monthly'
  # Put links creation logic here.
  #
  # The root path '/' and sitemap index file are added automatically for you.
  # Links are added to the Sitemap in the order they are specified.
  #
  # Usage: add(path, options={})
  #        (default options are used if you don't specify)
  #
  # Defaults: :priority => 0.5, :changefreq => 'weekly',
  #           :lastmod => Time.now, :host => default_host
  #
  # Examples:
  #
  # Add '/articles'
  #
  #   add articles_path, :priority => 0.7, :changefreq => 'daily'
  #
  # Add all articles:
  #
  #   Article.find_each do |article|
  #     add article_path(article), :lastmod => article.updated_at
  #   end
end
SitemapGenerator::Sitemap.ping_search_engines