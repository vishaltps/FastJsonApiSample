class AuthorSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :email, :dob
end
