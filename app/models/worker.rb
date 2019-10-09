class Worker < ApplicationRecord
    has_many :worker_sites
    has_many :sites, through: :worker_sites

    accepts_nested_attributes_for :sites, reject_if: proc { |attributes| attributes["location"].blank? }
end
