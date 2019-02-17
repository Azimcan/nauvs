require_dependency "nauvs_hook_listener"

Redmine::Plugin.register :nauvs do
	name 'Nauvs plugin'
	author 'Azim Can KURUCA'
	description 'This is a plugin for Redmine'
	version '0.0.1'
	url 'http://example.com/path/to/plugin'
	author_url 'http://example.com/about'

	#settings default: {'sample_setting' => 'value', 'foo'=>'bar'}, partial: "settings/nauvs_settings"

	# Module click
	project_module :nauvs do
	  permission :view_nauvs, { nauvs: [:index, :create] }
	end
	

	menu :project_menu, :nauvs, { controller: "nauvs", action: "index" }, capiton: "Nauvs"

end
