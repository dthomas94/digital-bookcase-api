require "graphql/rake_task"
require "rake"

GraphQL::RakeTask.new(schema_name: "DigitalBookcaseApiSchema")

namespace :graphql do
  task export: :environment do
    Rake::Task["graphql:schema:dump"].invoke
  end
end