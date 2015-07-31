# Based on Jekyll GalleryTag: https://github.com/luckyalvy/JekyllGalleryTag
# 
# Automatically creates thumbnails for a directory of images.
# Adds a "gallery" Liquid tag
# 
# Author: Matt Harzewski
# Copyright: Copyright 2013 Matt Harzewski
# License: GPLv2 or later
# Version: 1.1.0


require "RMagick"

module Jekyll


	class GalleryThumbnail


	 	def initialize(image_filename, config)
	 		@img_filename = image_filename
	 		@config = config
	 	end


	 	def to_s
	 		get_url
	 	end


	 	def get_url
	 		filename = File.path(@img_filename).sub(File.extname(@img_filename), "-thumb#{File.extname(@img_filename)}")
	 		directory = @config['destination_dir'] != nil ? @config['destination_dir'].sub(/^\//, '') : (@config['url'] != nil ? @config['url'].sub(/^\//, '') : "images/thumbs")
			"/#{directory}/#{filename}"
	 	end


	end


	# This part is copied from https://github.com/kinnetica/jekyll-plugins
	# Without it, generation does fail. --dmytro
	# Recover from strange exception when starting server without --auto
	class GalleryFile < StaticFile
		def write(dest)
			begin
				super(dest)
			rescue
			end
			true
		end
	end



	class ThumbGenerator < Generator


	 	def generate(site)

	 		@config = site.config['gallerytag']
	 		@gallery_dir  = File.expand_path(@config['source_dir'] != nil ? @config['source_dir'] : (@config['dir'] != nil ? @config['dir'].sub(/^\//, '') : "images/gallery"))
	 		@gallery_dest = @config['destination_dir'] != nil ? @config['destination_dir'] : (@config['url'] != nil ? @config['url'].sub(/^\//, '') : "images/thumbs")
	 		@gallery_full_dest = File.expand_path(File.join(site.source, @gallery_dest))

	 		thumbify(files_to_resize(site))

	 	end


	 	def files_to_resize(site)

	 		to_resize = []

	 		Dir.glob(File.join(@gallery_dir, "**", "*.{png,jpg,jpeg,gif}")).each do |file|
	 			if !File.basename(file).include? "-thumb"

	 				# generate thumbnails in same folder as original files
	 				file_directory = File.dirname(file).sub(@gallery_dir, '');
	 				name = File.join(file_directory, File.basename(file))
	 				thumbname = File.join(@gallery_full_dest, name)

	                # Keep the thumb files from being cleaned by Jekyll
	                site.static_files << Jekyll::GalleryFile.new(site, site.source, @gallery_dest + "/" + file_directory, File.basename(name))

	 				if !File.exists?(thumbname)
	 					to_resize.push({ "file" => file, "thumbname" => thumbname })
	 				end
	 			end
	 		end

	 		return to_resize

	 	end


	 	def thumbify(items)
	 		if items.count > 0
		 		items.each do |item|

		 			img = Magick::Image.read(item['file']).first
		 			thumb = img.resize_to_fill!(@config['thumb_width'], @config['thumb_height'])

		 			# create directory for thumbnail if it not exists
		 			if !Dir.exists?(File.dirname(item['thumbname']))
		 				FileUtils.mkdir_p File.dirname(item['thumbname'])
		 			end

		 			thumb.write(item['thumbname'])
		 			thumb.destroy!
		 		end
	 		end
	 	end


	end



end



Liquid::Template.register_tag('gallery', Jekyll::GalleryTag)

