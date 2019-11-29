module HometasksHelper
  def mismo_home?(task)
     e = task.hometasks.where(user_id: current_user.id, home_id: @home_id)
     if e.count > 0
       true
     else
       false
     end
 end
end
