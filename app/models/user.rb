class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    validates :name,presence:true
    validates :age,presence:true
    validates :mobie,presence:true

    self.per_page = 2

    # before_save:merge_name
    # after_destroy:update_log

    # def merge_name
    #     #self.name=self.name+self.age
    # end

    # def update_log
    #     logger.info "++++++++++++++++++++++++++"
    # end
    
end
