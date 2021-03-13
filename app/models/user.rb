class User < UuidApplicationRecord
  validates :birthdate, date_param: true
  validates :birthdate, presence: true
end
