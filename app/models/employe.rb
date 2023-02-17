class Employe < ApplicationRecord
    validates :name,presence:true 
    validates :age, presence: true, numericality: { greater_than: 0 }
    validates :salary, presence: true 
    validates :position,presence: true
    validates :gender, presence: true 
    validates :hobby,presence: true
    validates :description,presence: true
end
