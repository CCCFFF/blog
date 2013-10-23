class Video < ActiveRecord::Base
validates(:caption presence: true)
validates(:caption uniqueness: true)
validates(:source presence: true)
validates(:source uniqueness: true)
validates(:title presence: true)
validates(:room presence: true)
end
