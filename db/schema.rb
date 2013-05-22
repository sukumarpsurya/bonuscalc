# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130521062144) do

  create_table "AcctPostARBalance", :id => false, :force => true do |t|
  end

  create_table "Audit", :id => false, :force => true do |t|
    t.integer  "SK_AuditID",                       :null => false
    t.datetime "WorkFlowStartTime",                :null => false
    t.datetime "WorkFlowEndTime"
    t.string   "ProcessStepName"
    t.integer  "FiscalYear"
    t.integer  "FiscalMonth"
    t.string   "Initials",          :limit => 100
  end

  create_table "BranchHierarchy", :id => false, :force => true do |t|
  end

  create_table "BranchMonthlyBonus", :id => false, :force => true do |t|
    t.string   "BranchNumber",               :limit => 50
    t.integer  "FiscalYear",                                                              :null => false
    t.integer  "FiscalMonth",                                                             :null => false
    t.decimal  "MonthlyBonusWithoutPenalty",               :precision => 38, :scale => 2
    t.decimal  "PenaltyAmount",                            :precision => 38, :scale => 2
    t.decimal  "BonusAmount",                              :precision => 38, :scale => 2
    t.string   "CreatedUser",                :limit => 64
    t.datetime "CreatedDate"
  end

  create_table "BranchMonthlyBonus_accr", :id => false, :force => true do |t|
    t.string   "BranchNumber",               :limit => 50
    t.integer  "FiscalYear",                                                              :null => false
    t.integer  "FiscalMonth",                                                             :null => false
    t.decimal  "MonthlyBonusWithoutPenalty",               :precision => 38, :scale => 2
    t.decimal  "PenaltyAmount",                            :precision => 38, :scale => 2
    t.decimal  "BonusAmount",                              :precision => 38, :scale => 2
    t.string   "CreatedUser",                :limit => 64
    t.datetime "CreatedDate"
  end

  create_table "BranchMonthlyBonus_final", :id => false, :force => true do |t|
    t.integer  "SK_AuditID",                                                              :null => false
    t.string   "BranchNumber",               :limit => 50,                                :null => false
    t.integer  "FiscalYear",                                                              :null => false
    t.integer  "FiscalMonth",                                                             :null => false
    t.decimal  "MonthlyBonusWithoutPenalty",               :precision => 38, :scale => 2
    t.decimal  "PenaltyAmount",                            :precision => 38, :scale => 2
    t.decimal  "BonusAmount",                              :precision => 38, :scale => 2
    t.string   "CreatedUser",                :limit => 64
    t.datetime "CreatedDate"
  end

  create_table "BranchYTDBonus", :id => false, :force => true do |t|
    t.string   "BranchNumber",     :limit => 50
    t.integer  "FiscalYear",                                                    :null => false
    t.integer  "FiscalMonth",                                                   :null => false
    t.decimal  "YTDBonus",                       :precision => 38, :scale => 2
    t.decimal  "MaxYTDBonus",                    :precision => 38, :scale => 2
    t.decimal  "PriorMaxYTDBonus",               :precision => 38, :scale => 2
    t.string   "CreatedUser",      :limit => 64
    t.datetime "CreatedDate"
  end

  create_table "BranchYTDBonus_accr", :id => false, :force => true do |t|
    t.string   "BranchNumber",     :limit => 50
    t.integer  "FiscalYear",                                                    :null => false
    t.integer  "FiscalMonth",                                                   :null => false
    t.decimal  "YTDBonus",                       :precision => 38, :scale => 2
    t.decimal  "MaxYTDBonus",                    :precision => 38, :scale => 2
    t.decimal  "PriorMaxYTDBonus",               :precision => 38, :scale => 2
    t.string   "CreatedUser",      :limit => 64
    t.datetime "CreatedDate"
  end

  create_table "BranchYTDNOI", :id => false, :force => true do |t|
    t.string   "BranchNumber",    :limit => 50
    t.integer  "FiscalYear",                                                   :null => false
    t.integer  "FiscalMonth",                                                  :null => false
    t.decimal  "NOIAmount",                     :precision => 38, :scale => 2
    t.decimal  "YTDNOIAmount",                  :precision => 38, :scale => 2
    t.decimal  "MaxYTDNOIAmount",               :precision => 38, :scale => 2
    t.string   "CreatedUser",     :limit => 64
    t.datetime "CreatedDate"
  end

  create_table "BranchYTDNOI_accr", :id => false, :force => true do |t|
    t.string   "BranchNumber",    :limit => 50
    t.integer  "FiscalYear",                                                   :null => false
    t.integer  "FiscalMonth",                                                  :null => false
    t.decimal  "NOIAmount",                     :precision => 38, :scale => 2
    t.decimal  "YTDNOIAmount",                  :precision => 38, :scale => 2
    t.decimal  "MaxYTDNOIAmount",               :precision => 38, :scale => 2
    t.string   "CreatedUser",     :limit => 64
    t.datetime "CreatedDate"
  end

  create_table "DM_Date", :id => false, :force => true do |t|
    t.integer  "SK_DateID",                                 :null => false
    t.string   "CalendarDayName",            :limit => 10
    t.integer  "CalendarYear"
    t.integer  "CalendarQuarter"
    t.string   "CalendarQuarterName",        :limit => 2
    t.string   "CalendarQuarterYear",        :limit => 10
    t.integer  "CalendarYearMonth"
    t.integer  "CalendarMonth"
    t.string   "CalendarMonthName",          :limit => 10
    t.integer  "CalendarWeek",               :limit => 1
    t.string   "CalendarDateMMDDYYYY",       :limit => 10
    t.string   "CalendarDateYYYYMMDD",       :limit => 50
    t.datetime "CalendarDate"
    t.integer  "CalendarDayofYear",          :limit => 2
    t.integer  "CalendarDayofMonth",         :limit => 1
    t.integer  "CalendarDayofWeek",          :limit => 1
    t.datetime "FirstDayOfCalendarWeek"
    t.datetime "LastDayOfCalendarWeek"
    t.integer  "FiscalYear"
    t.integer  "FiscalQuarter"
    t.string   "FiscalQuarterName",          :limit => 2
    t.string   "FiscalQuarterYear",          :limit => 10
    t.integer  "FiscalYearMonth"
    t.integer  "FiscalMonth"
    t.string   "FiscalMonthName",            :limit => 10
    t.integer  "FiscalMonthRolling"
    t.integer  "FiscalWeek"
    t.integer  "FiscalWeekRolling"
    t.integer  "FiscalDayOfYear"
    t.integer  "FiscalDayOfMonth"
    t.integer  "FiscalDayOfWeek"
    t.datetime "FiscalYearStart"
    t.datetime "FiscalYearEnd"
    t.string   "FiscalDayName",              :limit => 10
    t.datetime "FirstDayOfFiscalWeek"
    t.datetime "LastDayOfFiscalWeek"
    t.boolean  "IsWeekend"
    t.boolean  "LeapYear"
    t.boolean  "FiscalMonthEndFlag"
    t.string   "USAbankHolidayFlag",         :limit => 9
    t.integer  "NumberOfWeeksInYear",        :limit => 1
    t.string   "Comments",                   :limit => 100
    t.datetime "LaborReadyWeekEnd"
    t.datetime "LaborReadyMonthEnd"
    t.datetime "PriorYearCalendarDate"
    t.datetime "PriorYearFiscalWeekEndDate"
  end

  add_index "DM_Date", ["CalendarDate"], :name => "NC_NU_CD"
  add_index "DM_Date", ["FiscalYear", "FiscalMonth"], :name => "NC_NU_FY_FM"
  add_index "DM_Date", ["FiscalYearMonth"], :name => "NC_NU_FYM"
  add_index "DM_Date", ["LastDayOfFiscalWeek", "FiscalMonthEndFlag"], :name => "NC_NU_LDFW_MEF"

  create_table "DistrictManagerMonthlyBonus", :id => false, :force => true do |t|
    t.string   "DMName",                     :limit => 100
    t.string   "DMCostCenter",               :limit => 10
    t.integer  "FiscalYear",                                                               :null => false
    t.integer  "FiscalMonth"
    t.decimal  "MonthlyBonusWithoutPenalty",                :precision => 38, :scale => 2
    t.decimal  "PenaltyAmount",                             :precision => 38, :scale => 2
    t.decimal  "BonusAmount",                               :precision => 38, :scale => 2
    t.decimal  "BranchAccrual",                             :precision => 38, :scale => 2
    t.string   "CreatedUser",                :limit => 64
    t.datetime "CreatedDate"
  end

  create_table "DistrictManagerMonthlyBonus_accr", :id => false, :force => true do |t|
    t.string   "DMName",                     :limit => 100
    t.string   "DMCostCenter",               :limit => 10
    t.integer  "FiscalYear",                                                               :null => false
    t.integer  "FiscalMonth"
    t.decimal  "MonthlyBonusWithoutPenalty",                :precision => 38, :scale => 2
    t.decimal  "PenaltyAmount",                             :precision => 38, :scale => 2
    t.decimal  "BonusAmount",                               :precision => 38, :scale => 2
    t.decimal  "BranchAccrual",                             :precision => 38, :scale => 2
    t.string   "CreatedUser",                :limit => 64
    t.datetime "CreatedDate"
  end

  create_table "DistrictManagerMonthlyBonus_final", :id => false, :force => true do |t|
    t.integer  "SK_AuditID",                                                               :null => false
    t.string   "DMName",                     :limit => 100
    t.string   "DMCostCenter",               :limit => 10,                                 :null => false
    t.integer  "FiscalYear",                                                               :null => false
    t.integer  "FiscalMonth",                                                              :null => false
    t.decimal  "MonthlyBonusWithoutPenalty",                :precision => 38, :scale => 2
    t.decimal  "PenaltyAmount",                             :precision => 38, :scale => 2
    t.decimal  "BonusAmount",                               :precision => 38, :scale => 2
    t.decimal  "BranchAccrual",                             :precision => 38, :scale => 2
    t.decimal  "BonusPayAmount",                            :precision => 38, :scale => 2
    t.string   "CreatedUser",                :limit => 64
    t.datetime "CreatedDate"
  end

  create_table "DistrictManagerYTDBonus", :id => false, :force => true do |t|
    t.string   "DMName",           :limit => 100
    t.string   "DMCostCenter",     :limit => 10
    t.integer  "FiscalYear",                                                     :null => false
    t.integer  "FiscalMonth"
    t.decimal  "YTDBonus",                        :precision => 38, :scale => 2
    t.decimal  "MaxYTDBonus",                     :precision => 38, :scale => 2
    t.decimal  "PriorMaxYTDBonus",                :precision => 38, :scale => 2, :null => false
    t.string   "CreatedUser",      :limit => 64
    t.datetime "CreatedDate"
  end

  create_table "DistrictManagerYTDBonus_accr", :id => false, :force => true do |t|
    t.string   "DMName",           :limit => 100
    t.string   "DMCostCenter",     :limit => 10
    t.integer  "FiscalYear",                                                     :null => false
    t.integer  "FiscalMonth"
    t.decimal  "YTDBonus",                        :precision => 38, :scale => 2
    t.decimal  "MaxYTDBonus",                     :precision => 38, :scale => 2
    t.decimal  "PriorMaxYTDBonus",                :precision => 38, :scale => 2, :null => false
    t.string   "CreatedUser",      :limit => 64
    t.datetime "CreatedDate"
  end

  create_table "DistrictManagerYTDNOI", :id => false, :force => true do |t|
    t.string   "DMName",       :limit => 100
    t.string   "DMCostCenter", :limit => 10
    t.integer  "FiscalYear",                                                 :null => false
    t.integer  "FiscalMonth"
    t.decimal  "NOIAmount",                   :precision => 38, :scale => 2
    t.decimal  "YTDNOIAmount",                :precision => 38, :scale => 2
    t.string   "CreatedUser",  :limit => 64
    t.datetime "CreatedDate"
  end

  create_table "DistrictManagerYTDNOI_accr", :id => false, :force => true do |t|
    t.string   "DMName",       :limit => 100
    t.string   "DMCostCenter", :limit => 10
    t.integer  "FiscalYear",                                                 :null => false
    t.integer  "FiscalMonth"
    t.decimal  "NOIAmount",                   :precision => 38, :scale => 2
    t.decimal  "YTDNOIAmount",                :precision => 38, :scale => 2
    t.string   "CreatedUser",  :limit => 64
    t.datetime "CreatedDate"
  end

  create_table "LawsonNOI", :id => false, :force => true do |t|
  end

  create_table "Login", :primary_key => "SK_LoginID", :force => true do |t|
    t.string   "UserName",   :limit => 64
    t.string   "Password",   :limit => 50
    t.string   "CreateUser", :limit => 64
    t.datetime "CreateDate"
  end

  create_table "MonthlyProcessSchedule", :primary_key => "SK_RunID", :force => true do |t|
    t.integer  "FiscalYear"
    t.integer  "FiscalMonth"
    t.datetime "JobStartTime"
    t.datetime "JobEndTime"
    t.string   "JobStatus",    :limit => 50
    t.string   "CreatedUser",  :limit => 64
    t.datetime "CreatedDate"
  end

  create_table "NOIAccounts", :id => false, :force => true do |t|
  end

  create_table "PenaltyOverride", :id => false, :force => true do |t|
    t.string   "BranchNumber", :limit => 50, :null => false
    t.string   "FiscalYear",   :limit => 50, :null => false
    t.string   "FiscalMonth",  :limit => 50, :null => false
    t.string   "CreatedUser",  :limit => 64
    t.datetime "CreatedDate"
  end

  create_table "test", :id => false, :force => true do |t|
    t.string   "BranchNumber",               :limit => 50
    t.integer  "FiscalYear",                                                              :null => false
    t.integer  "FiscalMonth",                                                             :null => false
    t.decimal  "MonthlyBonusWithoutPenalty",               :precision => 38, :scale => 2
    t.decimal  "PenaltyAmount",                            :precision => 38, :scale => 2
    t.decimal  "BonusAmount",                              :precision => 38, :scale => 2
    t.string   "CreatedUser",                :limit => 64
    t.datetime "CreatedDate"
  end

  create_table "users", :force => true do |t|
    t.string   "crypted_password",          :limit => 40
    t.string   "salt",                      :limit => 40
    t.string   "remember_token"
    t.datetime "remember_token_expires_at"
    t.string   "name"
    t.string   "email_address"
    t.boolean  "administrator",                           :default => false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "state",                                   :default => "active"
    t.datetime "key_timestamp"
  end

  add_index "users", ["state"], :name => "index_users_on_state"

end
