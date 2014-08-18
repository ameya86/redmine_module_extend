class RedmineModuleExtend::Hook < Redmine::Hook::ViewListener
  #render_on :view_projects_form, :partial => 'module_extends/projects_form'
  render_on :view_layouts_base_body_bottom, :partial => 'module_extends/projects_form'
end
