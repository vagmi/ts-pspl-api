class TimeEntry < ActiveRecord::Base
  belongs_to :project
  belongs_to :client
  before_save :set_client_id

  def set_client_id
    if(self.project_id)
      project = self.project
      self.client_id = project.client_id
    end
  end
end
