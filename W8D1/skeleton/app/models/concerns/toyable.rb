module Toyable
  extend ActiveSupport::Concern

  included do

    has_many :toys, as: :Toyable
  end

  def receive_toy(name)
    my_toy = Toy.find_by(name: name)
    Toy.find_or_create_by(name: name) do |toy|
        toy.name = name
        toy.toyable_type = self.class
        toy.toyable_id  = self.id 
    end
  end
end