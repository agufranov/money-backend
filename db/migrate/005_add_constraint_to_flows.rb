class AddConstraintToFlows < ActiveRecord::Migration
  def up
    execute 'ALTER TABLE flows ADD CONSTRAINT check_sum_gt_0 CHECK (sum > 0)'
  end

  def down
    execute 'ALTER TABLE flows DROP CONSTRAINT check_sum_gt_0'
  end
end
