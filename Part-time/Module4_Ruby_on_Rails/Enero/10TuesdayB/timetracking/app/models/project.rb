class Project < ActiveRecord::Base
  has_many :time_entries

  validates :name, presence: true

  def self.clean_old
    # old_projects = Project.where('created_at < ?', Date.today - 1.week)
    # old_projects.destroy_all

    # Project.where('created_at < ?', Date.today - 1.week).destroy_all

    where('created_at < ?', Date.today - 1.week).destroy_all
  end
end
