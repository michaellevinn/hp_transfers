class Partner < ActiveRecord::Base
    has_many :hotels
    accepts_nested_attributes_for :hotels
end
