class Picture < ActiveRecord::Base
validates(:source presence: true)
validates(:source uniqueness: true)
validates(:caption presence: true)
validates(:caption uniqueness: true)
validates(:title presence: true)
validates(:room presence: true)
end
