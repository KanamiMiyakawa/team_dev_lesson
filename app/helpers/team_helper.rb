module TeamHelper
  def default_img(image)
    image.presence || 'default.jpg'
  end

  def only_the_user_or_owner_can_delete(team,assign)
    if current_user.id == assign.user_id || current_user == team.owner
      link_to I18n.t('views.button.delete'), team_assign_path(team, assign), method: :delete, class: 'btn btn-sm btn-danger'
    end
  end
end
