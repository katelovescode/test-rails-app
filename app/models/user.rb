class User < UuidApplicationRecord
  validates :birthdate, date_param: true
end
