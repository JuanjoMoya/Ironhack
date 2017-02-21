class Project < ActiveRecord::Base
  has_attached_file :logo, styles: {:medium => "300x300>", :thumb => "100x100>"}
  validates_attachment_content_type :logo, :content_type => /\Aimage\/.*\z/


  has_many :time_entries
  has_many :people, through: :participations
  has_many :participations

  validates :name, presence: true

  def self.clean_old
    # old_projects = Project.where('created_at < ?', Date.today - 1.week)
    # old_projects.destroy_all

    # Project.where('created_at < ?', Date.today - 1.week).destroy_all

    where('created_at < ?', Date.today - 1.week).destroy_all
  end
end
