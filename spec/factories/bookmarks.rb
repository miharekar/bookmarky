# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :bookmark do
    factory :bootstrap_buttons do
      url "http://getbootstrap.com/css/#buttons"
    end

    factory :bootstrap_images do
      url "http://getbootstrap.com/css/#images"
    end

    factory :bonar do
      url "http://www.bonar.si/"
      tag_list 'bonbon, boni, bonar'
    end
  end
end
