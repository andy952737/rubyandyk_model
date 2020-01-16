#ruby model code note

belongs_to :model
 
has_many :models

validates :title, length: { minimum:3, maximum:3 }

enum mode: { leisure_mode: 'leisure_mode', serious_mode: 'serious_mode' }

#圖片處理, rails active_storage:install, https://5xruby.tw/posts/active-storage-review/
has_one_attached :image
mount_uploader :img, ImageUploader

#create table
after_create :method

#encrypt password 
has_secure_password 
