module Types
    class WorkInput < BaseInputObject
        # the name is usually inferred by class name but can be overwritten
        graphql_name 'WORK_INPUT'
  
        argument :type, String, required: true
        argument :key, String, required: true
        argument :revision, Integer, required: true
        argument :last_modified, String, required: true
        argument :data, WorkDataType, required: true
    end
end