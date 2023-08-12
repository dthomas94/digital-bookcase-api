module Types
    class WorkDataType < BaseInputObject
        arguent :key, String, required: true
        arguent :title, String, required: true
        arguent :revision, Integer, required: true
        arguent :latest_revision, Integer, required: true
        arguent :last_modified, String, required: true
        arguent :created, String, required: true
        arguent :authors, [String], required: true
        arguent :covers, [Int]
    end
end