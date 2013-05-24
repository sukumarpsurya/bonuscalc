class PenaltyOverride < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    id :int
    branchnumber :string
    fiscalyear :int
    fiscalmonth :int
    timestamps
  end
  attr_accessible :branchnumber, :fiscalyear, :fiscalmonth

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
