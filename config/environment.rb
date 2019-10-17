# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

# ページネーションラベルの日本語化
WillPaginate::ViewHelpers.pagination_options[:previous_label] = '前'
WillPaginate::ViewHelpers.pagination_options[:next_label] = '次'
