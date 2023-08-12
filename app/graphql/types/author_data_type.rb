module Types
    class AuthorDataType < Types::BaseObject
        field :bio, String
        field :name, String, null: false
        field :eastern_order, Boolean
        field :personal_name, String
        field :enumeration, String
        field :title, String
        field :source_records, [String]
        field :key, String
        field :photos, [String]
        field :alternate_names, [String]
        field :links, {url: String, title: String}
        field :uris, [String]
    end
end
