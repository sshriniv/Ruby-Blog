# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :categories_post, :class => 'CategoriesPosts' do
    category_id ""
    post_id 1
  end
end
