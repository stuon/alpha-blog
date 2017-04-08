class AddArticleDetailsToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :description, :text
    add_column :articles, :created_at, :datetime
    add_column :articles, :updated_at, :datetime
    add_column :articles, :url, :string
    add_column :articles, :source, :string
    add_column :articles, :type, :text
    add_column :articles, :hidden, :boolean
    add_column :articles, :deleted, :boolean
    add_column :articles, :published_date, :datetime
    add_column :articles, :popularity_index, :float
    add_column :articles, :difficulty_level, :interger
    add_column :articles, :word_count, :interger
    add_column :articles, :language_code, :text
  end
end
