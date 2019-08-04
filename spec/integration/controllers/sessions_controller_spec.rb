# require 'rails_helper'
# describe "SessionsController", type: :controller do
    
#     describe "POST #create" do
        
#         let(:user_a) {FactoryBot.create(:user,username:"username1",email:"emawda1@google.com",password:"password",password_confirmation:"password")}
#         let(:user_b){FactoryBot.create(:user,username:"username2",email:"emdadwada2@google.com",password:"password",password_confirmation:"password")}
        
#         before do
#         tour_a = FactoryBot.create(:tour,user: user_a)
#         visit new_user_session_path
#         fill_in "Email",with: login_user.email
#         fill_in "Password",with: login_user.password
#         check('locator')
#         click_on "ログインする"
#         end
        
#         context 'ユーザーがログインした後' do
#             it "current_userが存在する" do
#             let(:login_user){user_a}
#             expect(current_user).to eq user_a
#             end
#             it "ルート画面が表示される" do
#             let(:login_user){user_a}
#             expect(page).to have_content "StaticPages#home"
#             end
#             it "ユーザーAのツアーが表示される" do
#             visit user_path(login_user.id)
#             expect(page).to have_content tour_a.tourname
#             end
#         end
        
#         context 'ユーザーBがログインした時' do
#             let(:login_user){user_b}
#             it 'ユーザーAのツアーが表示されていない' do
#             visit user_path(login_user.id)
#             expect(page).to have_not_content "first tour"
#         end
        
#     end
    
# end
# end  