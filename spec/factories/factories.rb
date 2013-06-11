FactoryGirl.define do
  factory :category do
    name "cat_1"
  end

  factory :tag do
    name "my_tag"
  end

  factory :article do
    title "my_article"
    description "content"
    url "url"
    category
  end
end
