class Localisation < ActiveRecord::Base
  belongs_to :localisable, :polymorphic => true

  def position
    [self.latitude, self.longitude]      
  end

end
