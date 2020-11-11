module Filter
  extend ActiveSupport::Concern

  module ClassMethods
    def filter(key, value)
      self.where("#{key}": value)
    end

    def foreign_key(key, value)
      self.where("#{key}_id": value.id)
    end
  end
end