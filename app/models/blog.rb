# frozen_string_literal: true

# Blogs model
class Blog < ApplicationRecord
  has_rich_text :body
end
