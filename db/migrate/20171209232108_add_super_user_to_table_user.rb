class AddSuperUserToTableUser < ActiveRecord::Migration[5.1]
  def self.up
    user1 = User.create :email => "secrad@gmail.com", :password => "123456", :admin => true, :manageService => true, 
                                                      :manageEvent => true, :manageContact => true, :manageAlbum => true,
                                                      :manageAboutsecrad => true, :managePoll => true, :manageContest => true,
                                                      :manageRadio => true
  end
end
