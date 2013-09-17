#encoding: utf-8
module Admin::ApplicationHelper
  def admin_sidebar_items
    [
      {
        :group_name => '培训教师管理',
        :sidebar_items => [
          ['添加教师', new_admin_teacher_path ],
          ['教师列表', admin_teachers_path]
        ]
      },
      {
        :group_name => '学员管理',
        :sidebar_items => [
          ['添加学员', new_admin_case_path],
          ['学员列表', admin_cases_path]
        ]
      },
      {
        :group_name => '项目简介管理',
        :sidebar_items => [
          ['修改项目简介', admin_projects_path]
        ]
      },
      {
        :group_name => '合作机构管理',
        :sidebar_items => [
          ['添加合作机构', new_admin_cooperator_path],
          ['合作机构列表', admin_cooperators_path]
        ]
      },
      {
        :group_name => '班级设置',
        :sidebar_items => [
          ['新建班级', new_admin_group_path],
          ['班级列表', admin_groups_path]
        ]
      },
      {
        :group_name => '实训基地',
        :sidebar_items => [
          ['添加实训基地', new_admin_workbasis_path],
          ['基地列表', admin_workbases_path]
        ]
      },
      {
        :group_name => '报名管理',
        :sidebar_items => [
          ['报名列表', admin_customers_path]
        ]
      },
      {
        :group_name => '公告管理',
        :sidebar_items => [
          ['查看公告', admin_notices_path],
          ['添加公告', new_admin_notice_path]
        ]
      },
      {
        :group_name => '成绩管理',
        :sidebar_items => [
          ['查看成绩单', admin_reports_path]
        ]
      },
       {
        :group_name => '测试须知管理',
        :sidebar_items => [
          ['查看测试须知', admin_checkouts_path],
          ['添加测试须知', new_admin_checkout_path]
        ]
      },
      {
        :group_name => '活动管理',
        :sidebar_items => [
          ['查看报名信息', admin_meets_path],
          ['发布活动须知', new_admin_desc_path]  
        ]
      },
        {
        :group_name => '招聘平台管理',
        :sidebar_items => [
          ['公司审核', admin_companies_path],
          ['招聘启事管理', admin_recs_path],
          ['教师简历管理', admin_particulars_path]

        ]
      }
    ]
  end
end



