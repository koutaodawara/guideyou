class Guide < ActiveRecord::Base
  belongs_to :user
  acts_as_taggable_on :things
  acts_as_taggable

  has_attached_file :image,
                      style: {medium: "300x300", thumb: "100x100#"}
  validates_attachment_content_type :image,
                                     content_type: ["image/jpg", "image/jpeg", "image/png"]
end
