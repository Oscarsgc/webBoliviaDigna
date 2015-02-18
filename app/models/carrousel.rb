class Carrousel < ActiveRecord::Base
	
	attr_accessible :photo
	has_attached_file :photo, 
		:storage => :dropbox,
		:dropbox_credentials => "#{Rails.root}/config/dropbox_config.yml",
		:styles => { :medium => "300x300>", :thumb => "100x100>" },
		:dropbox_options => {:path => proc { |style| "#{style}/#{id}_#{photo.original_filename}"},:unique_filename => true}
    	#:dropbox_credentials => Rails.root.join("config/dropbox.yml"),
	 	#:default_url => "/images/:style/missing.png"
  	validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/
end