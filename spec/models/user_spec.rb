require 'rails_helper'

RSpec.describe User, type: :model do
  # It is valid with a first name, last name, email, and password
  it "姓、名、メール、パスワードがあれば有効な状態であること" do
    user = User.new(
      first_name: "Aaron",
      last_name: "Sumner",
      email: "tester@example.com",
      password: "dottle-nouveau-pavilion-tights-furze",
   )
   expect(user).to be_valid
  end

  # It is invalid without a first name
  it "名がなければ無効な状態であること" do
    user = User.new(first_name: nil)
    user.valid?
    expect(user.errors[:first_name]).to include("can't be blank")
  end

  # It is invalid without a last name
  it "姓がなければ無効な状態であること"

  # It is invalid without an email address
  it "メールアドレスがなければ無効な状態であること"

  # It is invalid with a duplicate email address
  it "重複したメールアドレスなら無効な状態であること"

  # It returns a user's full name as a string
  it "ユーザーのフルネームを⽂字列として返すこと"
  It
end
