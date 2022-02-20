class Category < ApplicationRecord
  has_many :musics
  has_many :years, through: :musics, dependent: :destroy

  validates :name, :presence => { :message =>  'cannot be blank' }, uniqueness: true
end
