class Card < ActiveRecord::Base
	algoliasearch do
    attribute :serial
  end
end