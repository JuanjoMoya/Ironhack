# Basic blog

# class Blog
# 	def initialize
# 		@post_container = []
# 	end
#
# 	def add_post(post)
# 		@post_container.push(post)
# 	end
#
# 	def publish_front_page
#
# 		sorted = @post_container.sort do |post1, post2|
# 	  	post1.date <=> post2.date
# 		end
#
# 		sorted.each do |pst|
# 			puts pst.title
# 			puts "*************"
# 			puts pst.text
# 			puts "-------------"
# 		end
# 	end
# end
#
#
# class Post
# 	attr_reader :title, :date, :text
# 	def initialize (title, date, text)
# 		@title = title
# 		@date = date
# 		@text = text
# 	end
# end


# blog = Blog.new
# blog.add_post Post.new("Post title 1", 20160101, "Post 1 text")
# blog.add_post Post.new("Post title 2", 20160102, "Post 2 text")
# blog.add_post Post.new("Post title 3", 20160103, "Post 3 text")
#
#
# blog.publish_front_page






# Advanced blog

# class Blog
# 	def initialize
# 		@post_container = []
# 	end
#
# 	def add_post(post)
# 		@post_container.push(post)
# 	end
#
# 	def publish_front_page
#
# 		sorted = @post_container.sort do |post1, post2|
# 	  	post1.date <=> post2.date
# 		end
#
# 		sorted.each do |pst|
# 			if pst.type == "Sponsored"
# 				puts "*****" + pst.title + "*****"
# 			else
# 				puts pst.title
# 			end
# 			puts "*************"
# 			puts pst.text
# 			puts "-------------"
# 		end
# 	end
# end
#
#
# class Post
# 	attr_reader :title, :date, :text, :type
# 	def initialize (title, date, text, type)
# 		@title = title
# 		@date = date
# 		@text = text
# 		@type = type
# 	end
# end
#
#
# blog = Blog.new
# blog.add_post Post.new("Post title 1", 20160101, "Post 1 text", "Not sponsored")
# blog.add_post Post.new("Post title 2", 20160102, "Post 2 text", "Sponsored")
# blog.add_post Post.new("Post title 3", 20160103, "Post 3 text", "Not sponsored")
#
#
# blog.publish_front_page







# Bonus blog without pagination
# require 'colorize'
# class Blog
# 	def initialize
# 		@post_container = []
# 	end
#
# 	def add_post(post)
# 		@post_container.push(post)
# 	end
#
# 	def publish_front_page
# 		total_pages = @post_container.length / 3
# 		if @post_container.length % 3 != 0
# 			total_pages += 1
# 		end
# 		sorted = @post_container.sort do |post1, post2|
# 	  	post1.date <=> post2.date
# 		end
#
# 		count = 0
# 		sorted.each do |pst|
# 			if pst.type == "Sponsored"
# 				puts "*****" + pst.title + "*****"
# 			else
# 				puts pst.title
# 			end
# 			puts "*************"
# 			puts pst.text
# 			puts "-------------"
# 			count += 1
# 			break if count == 3
# 		end
#
# 		num = 0
# 		while num < total_pages
# 			num += 1
# 			if num == count / 3
# 				print "#{num}".red
# 			else
# 				print num
# 			end
# 			print " "
# 		end
# 		print "\n"
# 		respond = gets.chomp
# 	end
# end
#
#
# class Post
# 	attr_reader :title, :date, :text, :type
# 	def initialize (title, date, text, type)
# 		@title = title
# 		@date = date
# 		@text = text
# 		@type = type
# 	end
# end
#
#
	# if promo == true
	# 	haz_algo
	# else
	# 	haz_otra_cosa
	# end
	#
	# # ternary operator
	# if promo ? haz_algo : haz_otra_cosa

		


# blog = Blog.new
# blog.add_post Post.new("Post title 1", 20160101, "Post 1 text", "Not sponsored")
# blog.add_post Post.new("Post title 2", 20160102, "Post 2 text", "Not sponsored")
# blog.add_post Post.new("Post title 3", 20160103, "Post 3 text", "Not sponsored")
# blog.add_post Post.new("Post title 4", 20160104, "Post 4 text", "Not sponsored")
# blog.add_post Post.new("Post title 5", 20160105, "Post 5 text", "Not sponsored")
# blog.add_post Post.new("Post title 6", 20160106, "Post 6 text", "Not sponsored")
# blog.add_post Post.new("Post title 7", 20160107, "Post 7 text", "Not sponsored")
# blog.add_post Post.new("Post title 8", 20160108, "Post 8 text", "Not sponsored")
#
#
# blog.publish_front_page





# Bonus blog with pagination

class Blog
	def initialize
		@post_container = []
		@total_pages = 0
		@actual_page = 0
		@actual_post = 0
	end

	def add_post(post)
		@post_container.push(post)
	end



	def publish_front_page
		@total_pages = @post_container.length / 3
		if @post_container.length % 3 != 0
			@total_pages += 1
		end
		sorted = @post_container.sort do |post1, post2|
	  	post1.date <=> post2.date
		end

		count = 0
		sorted.each do |pst|
			if pst.type == "Sponsored"
				puts "*****" + pst.title + "*****"
			else
				puts pst.title
			end
			puts "*************"
			puts pst.text
			puts "-------------"
			@actual_post += 1
			count += 1
			break if count == 3
		end

		num = 0
		while num < @total_pages
			num += 1
			if num == count / 3
				require 'colorize'
				print "#{num}".red
			else
				print num
			end
			print " "
		end
		print "\n"
		@actual_page += 1
		respond = gets.chomp
	end

	if respond == "next"
		if @total_pages > @actual_page

		else
		end
	elsif respond == "prev"

	else

	end

end




class Post
	attr_reader :title, :date, :text, :type
	def initialize (title, date, text, type)
		@title = title
		@date = date
		@text = text
		@type = type
	end
end


blog = Blog.new
blog.add_post Post.new("Post title 1", 20160101, "Post 1 text", "Not sponsored")
blog.add_post Post.new("Post title 2", 20160102, "Post 2 text", "Not sponsored")
blog.add_post Post.new("Post title 3", 20160103, "Post 3 text", "Not sponsored")
blog.add_post Post.new("Post title 4", 20160104, "Post 4 text", "Not sponsored")
blog.add_post Post.new("Post title 5", 20160105, "Post 5 text", "Not sponsored")
blog.add_post Post.new("Post title 6", 20160106, "Post 6 text", "Not sponsored")
blog.add_post Post.new("Post title 7", 20160107, "Post 7 text", "Not sponsored")
blog.add_post Post.new("Post title 8", 20160108, "Post 8 text", "Not sponsored")


blog.publish_front_page
