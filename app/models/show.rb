class Show < ActiveRecord::Base
  has_many :characters 
  has_many :actors, through: :characters 
  belongs_to :network

  def actors_list 
    names = []
    Show.first.characters.each{
        |character|
        names << "#{character.actor.first_name} #{character.actor.last_name}"
    }
    names
  end 
end