class Site < ApplicationRecord
    has_many :worker_sites
    has_many :workers, through: :worker_sites
end
