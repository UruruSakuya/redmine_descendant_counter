Redmine::Plugin.register :redmine_descendant_counter do
  name 'Redmine Descendant Counter plugin'
  author 'Ururu Sakuya'
  description 'This is a plugin for Redmine'
  version '0.0.1'
  url 'https://github.com/UruruSakuya/redmine_descendant_counter'
  author_url 'http://ururusakuya.wordpress.com/'

  project_module :counter do
    permission :view_descendant_counter, :descendant_counters => [:index]
    permission :manage_decendant_counter, :descendant_counters => [:new, :edit, :create, :update, :destroy],
               :require => :member
  end

  menu :project_menu, :descendant_counter,
       {:controller => 'descendant_counters', :action =>'index'},
       :param => :project_id

end
