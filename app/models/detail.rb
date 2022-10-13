class Detail < ApplicationRecord
  actable
  translates :title , :description
end
