class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors through :characters
  belongs_to :networks

  def actors_list
    self.actors.map do |actor|
        "#{actor.first_name} #{actor.last_name}"
    end
  end

end
