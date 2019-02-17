class NauvsHookListener < Redmine::Hook::ViewListener
	render_on :view_projects_show_left, partial: "nauvs/project_overview"
	
	def controller_account_success_authentication_after(context = {})
		@user_benzersiz_degisken = context[:user]
		# TODO
	end

	# def controller_issues_new_after_save(context = {})
	# 	new_nauvs_info = NauvsInfo.create(
	# 		issue_id: Issue.maximum(:id).next-1, 
	# 		user_id: @user_benzersiz_degisken.id
	# 	)

	# 	if context[:issue].status_id != nil
	# 		NauvsInfoDetail.create(
	# 			nauvs_info_id: new_nauvs_info.id, 
	# 			prop_key: "status_id", 
	# 			old_value: nil, 
	# 			value: context[:issue].status_id
	# 		)
	# 	end

	# 	if context[:issue].category_id != nil
	# 		NauvsInfoDetail.create(
	# 			nauvs_info_id: new_nauvs_info.id, 
	# 			prop_key: "category_id", 
	# 			old_value: nil, 
	# 			value: context[:issue].category_id
	# 		)
	# 	end
	# end

	# def controller_issues_edit_before_save(context = {})
	# 	puts context[:params]


	# 	prev_issue = Issue.find(context[:journal].next_issue_id)
		
	# 	#nauvs_info = NauvsInfo.where(issue_id: context[:issue].next_issue_id)
		
	# 	new_nauvs_info = NauvsInfo.create(
	# 		issue_id: context[:journal].next_issue_id+1, 
	# 		user_id: @user_benzersiz_degisken.id
	# 	)

	# 	if context[:issue].status_id != nil
	# 		NauvsInfoDetail.create(
	# 			nauvs_info_id: new_nauvs_info.id, 
	# 			prop_key: "status_id", 
	# 			old_value: prev_issue.status_id, 
	# 			value: context[:issue].status_id
	# 		)
	# 	end

	# 	if context[:issue].category_id != nil
	# 		NauvsInfoDetail.create(
	# 			nauvs_info_id: new_nauvs_info.id, 
	# 			prop_key: "category_id", 
	# 			old_value: prev_issue.category_id, 
	# 			value: context[:issue].category_id
	# 		)
	# 	end

	# 	if context[:issue].status_id =! prev_issue.status_id
	# 		NauvsInfoDetail.create(
	# 			nauvs_info_id: new_nauvs_info.id, 
	# 			prop_key: "hours", 
	# 			old_value: nil,
	# 			value: context[:issue].hours
	# 		)
	# 	end

	# end
	
end

# {
# 	"utf8"=>"✓", 
# 	"_method"=>"patch", 
# 	"authenticity_token"=>"JAWgGMtKMH/UyAgJZ+Er1jFCwdQinU4+syBAz5tOEdkdggpQ/xVQrdxw2vCXKHK+GjIg1fedEwofH9fBkTRiVg==", 
# 	"form_update_triggered_by"=>"", 
# 	"issue"=><ActionController::Parameters {
# 		"is_private"=>"0", 
# 		"tracker_id"=>"1", 
# 		"subject"=>"asdf", 
# 		"description"=>"", 
# 		"status_id"=>"1", 
# 		"priority_id"=>"2", 
# 		"assigned_to_id"=>"1", 
# 		"category_id"=>"1", 
# 		"parent_issue_id"=>"", 
# 		"start_date"=>"2019-02-13", 
# 		"due_date"=>"2019-02-20", 
# 		"estimated_hours"=>"", 
# 		"done_ratio"=>"10", 
# 		"notes"=>"", 
# 		"private_notes"=>"0", 
# 		"lock_version"=>"3"
# 	} 
# 	permitted: false>, 
# 	"was_default_status"=>"1", 
# 	"time_entry"=><ActionController::Parameters {
# 		"hours"=>"", 
# 		"activity_id"=>"", 
# 		"comments"=>""
# 	} 
# 	permitted: false>, 
# 	"last_journal_id"=>"2", 
# 	"commit"=>"Submit", 
# 	"prev_issue_id"=>"3", 
# 	"next_issue_id"=>"1", 
# 	"issue_position"=>"7", 
# 	"issue_count"=>"8", 
# 	"controller"=>"issues", 
# 	"action"=>"update", 
# 	"id"=>"2"
# }