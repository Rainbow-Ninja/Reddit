class Post < ApplicationRecord
    validate_presence_of :title, :body, :account_id, :community_id
end