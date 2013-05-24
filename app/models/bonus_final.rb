class BonusFinal < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    userinitial :string
    fiscalyear :int
    fiscalmonth :int
    timestamps
  end
  attr_accessible :fiscalyear, :fiscalmonth, :userinitial

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
