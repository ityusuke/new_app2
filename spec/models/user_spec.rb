require 'rails_helper'

RSpec.describe User, type: :model do
describe "ユーザーデータの検証" do 
    
   context "正しいデータの場合" do
        it "登録できること" do
            user_a = FactoryBot.build(:user)
            expect(user_a.save).to be_truthy
        end
   end
     context "編集ができる" do
             user_b = FactoryBot.build(:user)
            it "名前が編集できる" do
            user_b.username="dwadad"
            expect(user_b.save).to be_truthy
            end
            it "emailが編集できる" do
            user_b.email="wadawa@yahoo.co.jp"
            expect(user_b.save).to be_truthy
            end
     end
    
   
    context "間違ったデータの場合" do
        it "名前が空である" do
            user_a = FactoryBot.build(:user,username:"")
            expect(user_a.save).not_to be_truthy
        end
        it "名前が長すぎる" do
            user_a = FactoryBot.build(:user,username:"a"*26)
            expect(user_a.save).not_to be_truthy
        end
        it "passwordとpassword_confirmationが空である" do
            user_a = FactoryBot.build(:user,password:"",password_confirmation:"")
            expect(user_a.save).not_to be_truthy
        end
        it "passwordとpassword_confirmationが一致しない" do
            user_a = FactoryBot.build(:user,password:"password",password_confirmation:"dwadwd")
            expect(user_a.save).not_to be_truthy
        end
        it "passwordとpassword_confirmationが長すぎる" do
            user_a = FactoryBot.build(:user,password:"a"*20,password_confirmation:"a"*20)
            expect(user_a.save).not_to be_truthy
        end
        
        it "passwordとpassword_confirmationが短すぎる" do
            user_a = FactoryBot.build(:user,password:"a"*2,password_confirmation:"a"*2)
            expect(user_a.save).not_to be_truthy
        end
    end
    
end
end
