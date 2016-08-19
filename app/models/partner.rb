class Partner < ActiveRecord::Base
    has_many :hotels, :dependent => :destroy
    accepts_nested_attributes_for :hotels, :allow_destroy => :true
end
