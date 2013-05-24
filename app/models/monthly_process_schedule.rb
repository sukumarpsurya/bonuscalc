class MonthlyProcessSchedule < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    SK_RunID :primary_key
    FiscalYear :int
    FiscalMonth :int
    JobStartTime :datetime
    JobEndTime :datetime
    JobStatus :string
    CreatedDate :datetime
    CreatedUser :string
    timestamps
  end
  attr_accessible 

  # --- Permissions --- #

  def create_permitted?
    acting_user.administrator?
  end

  def update_permitted?
    acting_user.administrator?
  end

  def destroy_permitted?
    acting_user.administrator?
  end

  def view_permitted?(field)
    true
  end

end
