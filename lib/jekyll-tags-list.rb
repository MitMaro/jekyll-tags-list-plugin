module Jekyll
	class TagsList < Generator
	
		def generate(site)
			site.data['tag_list'] = TagsList.generate_tags_structure(site).keys
			site.data['tag_data'] = TagsList.generate_tags_structure(site)
		end
		
		def self.generate_tags_structure(site)
			tags = Hash.new
			maximum = calculate_maximum_post_count(site)
			for tag in site.tags.keys do
				tags[tag] = Hash.new
				post_count = number_of_posts_for_tag(site, tag)
				popularity = calculate_popularity(maximum, post_count)
				popularity_class = calculate_popularity_class(site, maximum, popularity)
				tags[tag]['post_count'] = post_count.to_s
				tags[tag]['popularity'] = popularity.to_s
				tags[tag]['popularity_class'] = popularity_class.to_s
			end
			tags
		end
		
		def self.calculate_popularity_class(site, maximum, popularity)
			output = ((site.config['number_popularity_classes'] / 100.to_f) * popularity).round
		end
		
		def self.calculate_maximum_post_count(site)
			max = site.tags.map { |tag,posts| posts.count }.max
		end
	
		def self.number_of_posts_for_tag(site, tag)
			count = site.tags[tag].length
		end
		
		def self.calculate_popularity(maximum, count)
			percent = ((count.to_f / maximum) * 100).floor
		end
		
	end
end
