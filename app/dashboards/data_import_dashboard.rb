require "administrate/base_dashboard"

class DataImportDashboard < Administrate::BaseDashboard
  ATTRIBUTE_TYPES = {
    id: Field::String,
    description: Field::String,
    file: Field::ActiveStorage,
    filename: Field::String,
    occupation_standard: Field::BelongsTo,
    occupation_standard_title: Field::String,
    source_file: Field::BelongsTo,
    created_at: Field::DateTime,
    updated_at: Field::DateTime
  }.freeze

  COLLECTION_ATTRIBUTES = %i[
    filename
    occupation_standard
  ].freeze

  SHOW_PAGE_ATTRIBUTES = %i[
    description
    file
    occupation_standard
  ].freeze

  FORM_ATTRIBUTES = %i[
    description
    file
  ].freeze

  COLLECTION_FILTERS = {}.freeze

  def display_resource(data_import)
    "Data Import for #{data_import.file.filename}"
  end
end