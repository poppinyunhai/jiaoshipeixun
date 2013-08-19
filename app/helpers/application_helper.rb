#encoding: utf-8
module ApplicationHelper
  def navbar_items
    {
      :nav_items => [
        ['首页', root_path],
        ['资格认证', projects_path],
        ['权威师资', teachers_path],
        ['学员感言', cases_path],
        ['立即加入', join_path]
      ]
    }
  end
end
