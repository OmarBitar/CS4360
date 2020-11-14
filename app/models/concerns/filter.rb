module Filter
  extend ActiveSupport::Concern

  $days = %w[Sunday Monday Tuesday Wednesday Thursday Friday Saturday]

  module ClassMethods
    def filter(key, value)
      self.where("#{key}": value)
    end

    def foreign_key(key, value)
      self.where("#{key}_id": value.id)
    end

    def by_user(user)
      self.where(user_id: user.id)
    end

  end
end