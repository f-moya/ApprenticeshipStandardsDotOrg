namespace :after_party do
  desc "Deployment task: generate_synonym_set"
  task generate_synonym_set: :environment do
    puts "Running deploy task 'generate_synonym_set'"

    # Put your task implementation HERE.
    #
    synonym = Synonym.create!(word: "UX", synonyms: "User experience")
    ElasticsearchWrapper::Synonyms.create_set(
      value: synonym.to_elasticsearch_value,
      rule_id: synonym.id
    )

    OccupationStandard.__elasticsearch__.create_index!
    OccupationStandard.import

    # Update task as completed.  If you remove the line below, the task will
    # run with every deploy (or every time you call after_party:run).
    AfterParty::TaskRecord
      .create version: AfterParty::TaskRecorder.new(__FILE__).timestamp
  end
end