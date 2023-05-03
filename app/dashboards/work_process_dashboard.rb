require "administrate/base_dashboard"

class WorkProcessDashboard < Administrate::BaseDashboard
  ATTRIBUTE_TYPES = {
    id: Field::String,
    competencies: Field::HasMany,
    default_hours: Field::Number,
    description: Field::String,
    maximum_hours: Field::Number,
    minimum_hours: Field::Number,
    occupation_standard: Field::BelongsTo,
    sort_order: Field::Number,
    title: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime
  }.freeze

  COLLECTION_ATTRIBUTES = %i[
    title
    competencies
    minimum_hours
    maximum_hours
  ].freeze

  SHOW_PAGE_ATTRIBUTES = %i[
    id
    competencies
    default_hours
    description
    maximum_hours
    minimum_hours
    occupation_standard
    sort_order
    title
    created_at
    updated_at
  ].freeze

  FORM_ATTRIBUTES = %i[
    competencies
    default_hours
    description
    maximum_hours
    minimum_hours
    occupation_standard
    sort_order
    title
  ].freeze

  COLLECTION_FILTERS = {}.freeze

  def display_resource(work_process)
    work_process.title
  end
end