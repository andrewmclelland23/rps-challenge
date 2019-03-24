class UserManagement
  require_relative 'html_builder'
  include HTMLBuilder

  attr_reader :users

  def self.create
    @user_mgmt = UserManagement.new
  end

  def self.instance
    @user_mgmt
  end

  def initialize
    @users = []
  end

  def sign_in(user)
    @users << user
  end

  def sign_out(user)
    @users.delete(user)
  end

  def print_user_list_html
    user_names_array = @users.map { |user| user.name}
    HTMLBuilder.array_to_list(user_names_array)
  end

  def print_user_drop_down_html
    user_array = @users.map { |user| {value: user, visible_name: user.name} }
    HTMLBuilder.array_to_drop_down(user_array)
  end
end
