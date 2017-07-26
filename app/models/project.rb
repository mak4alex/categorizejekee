class Project < ApplicationRecord
  has_many :categories
  accepts_nested_attributes_for(:categories, allow_destroy: true,
    reject_if: lambda { |attrs| attrs['name'].blank? })
end
