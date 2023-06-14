class WorkProcess < ApplicationRecord
  include ActionView::Helpers::NumberHelper

  belongs_to :occupation_standard
  has_many :competencies, -> { order(:sort_order) }, dependent: :destroy

  validates :title, presence: true

  def hours
    [maximum_hours, minimum_hours].compact.first
  end

  def hours_in_human_format
    number_to_human(
      hours,
      format: "%n%u",
      precision: 2,
      units:
      {
        thousand: "K"
      }
    )
  end
end
