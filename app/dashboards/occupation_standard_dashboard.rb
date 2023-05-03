require "administrate/base_dashboard"

class OccupationStandardDashboard < Administrate::BaseDashboard
  ATTRIBUTE_TYPES = {
    apprenticeship_to_journeyworker_ratio: Field::String,
    created_at: Field::DateTime,
    data_imports: Field::HasMany,
    existing_title: Field::String,
    id: Field::String,
    national_standard_type: EnumField,
    occupation: Field::BelongsTo,
    ojt_hours_max: Field::Number,
    ojt_hours_min: Field::Number,
    ojt_type: EnumField,
    onet_code: Field::String,
    organization: Field::BelongsTo,
    probationary_period_months: Field::Number,
    rapids_code: Field::String,
    registration_agency: Field::BelongsTo.with_options(scope: -> { RegistrationAgency.includes(:state) }),
    related_instructions: Field::HasMany,
    rsi_hours_max: Field::Number,
    rsi_hours_min: Field::Number,
    source_file: Field::String,
    status: EnumField,
    term_months: Field::Number,
    title: Field::String,
    updated_at: Field::DateTime,
    url: Field::Url,
    wage_steps: Field::HasMany,
    work_processes: Field::HasMany
  }.freeze

  COLLECTION_ATTRIBUTES = %i[
    title
    occupation
    registration_agency
    onet_code
    status
  ].freeze

  SHOW_PAGE_ATTRIBUTES = %i[
    title
    onet_code
    rapids_code
    term_months
    url
    status
    created_at
    updated_at

    apprenticeship_to_journeyworker_ratio
    existing_title
    occupation
    national_standard_type
    ojt_type
    ojt_hours_max
    ojt_hours_min
    organization
    probationary_period_months
    registration_agency
    rsi_hours_max
    rsi_hours_min

    data_imports
    work_processes
    related_instructions
    wage_steps
  ].freeze

  FORM_ATTRIBUTES = %i[
    title
    onet_code
    rapids_code
    term_months
    url
    status

    apprenticeship_to_journeyworker_ratio
    existing_title
    occupation
    national_standard_type
    ojt_type
    ojt_hours_max
    ojt_hours_min
    organization
    probationary_period_months
    registration_agency
    rsi_hours_max
    rsi_hours_min
  ].freeze

  COLLECTION_FILTERS = {}.freeze

  def display_resource(occupation_standard)
    "Occupation Standard for #{occupation_standard.title}"
  end
end