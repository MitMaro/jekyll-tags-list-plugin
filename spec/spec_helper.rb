require 'jekyll'
p File.expand_path('../lib/jekyll-tags-list', File.dirname(__FILE__))
require File.expand_path('../lib/jekyll-tags-list', File.dirname(__FILE__))

Jekyll.logger.log_level = :error

RSpec.configure do |config|
	config.run_all_when_everything_filtered = true
	config.filter_run :focus

	def test_dir(*subdirs)
		File.join(File.dirname(__FILE__), *subdirs)
	end

	def source_dir(*subdirs)
		test_dir('fixtures', *subdirs)
	end

	def dest_dir(*subdirs)
		test_dir('dest', *subdirs)
	end
	
	def build_configs(overrides, base_hash = Jekyll::Configuration::DEFAULTS)
		Jekyll::Utils.deep_merge_hashes(base_hash, overrides)
	end

	def site_configuration(overrides = {})
		build_configs({
		"source"      => source_dir,
		"destination" => dest_dir
		}, build_configs(overrides))
	end
	
	def build_site(config = {})
		site = Jekyll::Site.new(site_configuration(
		))
		site.process
		site
	end
end
