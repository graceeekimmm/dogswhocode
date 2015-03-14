class Dog < ActiveRecord::Base
    attr_accessible :title, :description, :breed #idk
	belongs_to :user

	has_attached_file :image,styles: {medium: "300x300"}
	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

	has_attached_file :document
	validates_attachment :document, :content_type => { :content_type => %w(application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document) }
end
