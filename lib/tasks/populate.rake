namespace :db do
  desc "Erase and fill database"
  task :populate => :environment do

    require 'populator'
    require 'faker'

    [Article].each(&:delete_all)

    Article.populate 20 do |article|
      article.title = Populator.words(1..5).titleize
      article.introduction = Populator.sentences(1..5).titleize
      article.description = Populator.sentences(2..10)
      article.footnotes = Populator.sentences(1..5)     
      article.created_at = 2.years.ago..Time.now
      article.published_at = 2.years.ago..Time.now
      article.updated_at = 2.years.ago..Time.now
      article.position = [1..20]
      end
    end
end

