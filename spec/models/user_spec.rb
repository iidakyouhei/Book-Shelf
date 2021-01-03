require 'rails_helper'
describe User do
  describe '#create' do
    it "ニックネームが空だと登録できない" do
      user = build(:user, name: "")
      user.valid?
      expect(user.errors[:name]).to include("を入力してください")
    end

    it "メールアドレスが空だと登録できない" do
      user = build(:user, email: "")
      user.valid?
      expect(user.errors[:email]).to include("を入力してください")
    end

    it "パスワードが空だと登録できない" do
      user = build(:user, password: "")
      user.valid?
      expect(user.errors[:password]).to include("を入力してください")
    end

    it "パスワードと確認パスワードが一致していないと登録できない" do
      user = build(:user, password_confirmation: "")
      user.valid?
      expect(user.errors[:password_confirmation]).to include("とパスワードの入力が一致しません")
    end
    it "パスワードが6文字以上で登録できる" do
      user = build(:user, password: "pas123", password_confirmation: "pas123")
      user.valid?
      expect(user).to be_valid
    end

    it "パスワードが7文字未満だと登録できない" do
      user = build(:user, password: "pas")
      user.valid?
      expect(user.errors[:password]).to include("は6文字以上で入力してください")
    end
  end
end