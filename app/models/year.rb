class Year < ApplicationRecord
  has_many :musics
  has_many :categorys, through: :musics, dependent: :destroy

  validates :name, :presence => { :message =>  'cannot be blank' }, uniqueness: true
end
