class PostImage < ApplicationRecord
  #　PostImageモデルには、ActiveStorageを使って画像を持たせる
  has_one_attached :image
end
