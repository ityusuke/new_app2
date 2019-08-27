{"changed":true,"filter":false,"title":"users_controller.rb","tooltip":"/new_app2/app/controllers/users_controller.rb","value":"# frozen_string_literal: true\nclass UsersController < ApplicationController\n\n  before_action :check_user_login?, only: [:show]\n  \n  \n  def new\n   @user=User.new\n  end\n\n  \n  def create\n    @user=User.new(user_params)\n    if @user.save\n       set_dafault_image(@user)\n       current_user = @user\n       redirect_to root_path\n    else\n      #パラムスを持つユーザー\n      render new_user_path\n    end\n  end\n\n\n  def edit\n   user_find_by_id\n  end\n\n\n  def update\n     user_find_by_id\n     binding.pry\n      if @user.update(user_params)\n        set_dafault_image(@user)\n      redirect_to user_path(id: current_user.id)\n      else\n      render edit_user_path\n      end\n  end\n\n \n  def destroy\n    user_find_by_id\n    @user.destroy\n  end\n\n  def show\n    user_find_by_id\n    @tours = Tour.where(user_id: @user.id)\n  end\n\n  def followings\n    user_find_by_id\n    @users = @user.followings.page(params[:page])\n    render 'follow'\n  end\n\n  def followers\n    user_find_by_id\n    @users = @user.followers.page(params[:page])\n    render 'follow'\n  end\n\n  def favorite\n    @tours = current_user.favtours.page(params[:page])\n  end\n\n  private\n\n  def user_find_by_id\n    @user = User.find_by(id: params[:id])\n  end\n  def user_params\n   params.require(:user).permit(:username,:email, :password, :password_confirmation,:user_image)\n  end\n  \n  def set_dafault_image(user)\n    if user.image.nil?\n      user.image= \"guest.jpg\"\n    end\n  end\nend\n","undoManager":{"mark":71,"position":100,"stack":[[{"start":{"row":11,"column":31},"end":{"row":12,"column":0},"action":"insert","lines":["",""],"id":128},{"start":{"row":12,"column":0},"end":{"row":12,"column":4},"action":"insert","lines":["    "]},{"start":{"row":12,"column":4},"end":{"row":12,"column":5},"action":"insert","lines":["b"]},{"start":{"row":12,"column":5},"end":{"row":12,"column":6},"action":"insert","lines":["i"]},{"start":{"row":12,"column":6},"end":{"row":12,"column":7},"action":"insert","lines":["n"]},{"start":{"row":12,"column":7},"end":{"row":12,"column":8},"action":"insert","lines":["d"]},{"start":{"row":12,"column":8},"end":{"row":12,"column":9},"action":"insert","lines":["i"]},{"start":{"row":12,"column":9},"end":{"row":12,"column":10},"action":"insert","lines":["n"]}],[{"start":{"row":12,"column":10},"end":{"row":12,"column":11},"action":"insert","lines":["g"],"id":129},{"start":{"row":12,"column":11},"end":{"row":12,"column":12},"action":"insert","lines":["/"]},{"start":{"row":12,"column":12},"end":{"row":12,"column":13},"action":"insert","lines":["p"]},{"start":{"row":12,"column":13},"end":{"row":12,"column":14},"action":"insert","lines":["r"]}],[{"start":{"row":12,"column":14},"end":{"row":12,"column":15},"action":"insert","lines":["y"],"id":130}],[{"start":{"row":12,"column":11},"end":{"row":12,"column":12},"action":"remove","lines":["/"],"id":131}],[{"start":{"row":12,"column":11},"end":{"row":12,"column":12},"action":"insert","lines":["."],"id":132}],[{"start":{"row":13,"column":13},"end":{"row":13,"column":38},"action":"remove","lines":["=User.create(user_params)"],"id":133},{"start":{"row":13,"column":13},"end":{"row":13,"column":14},"action":"insert","lines":["s"]},{"start":{"row":13,"column":14},"end":{"row":13,"column":15},"action":"insert","lines":["a"]},{"start":{"row":13,"column":15},"end":{"row":13,"column":16},"action":"insert","lines":["v"]},{"start":{"row":13,"column":16},"end":{"row":13,"column":17},"action":"insert","lines":["e"]}],[{"start":{"row":13,"column":13},"end":{"row":13,"column":14},"action":"insert","lines":["."],"id":134}],[{"start":{"row":12,"column":15},"end":{"row":13,"column":0},"action":"remove","lines":["",""],"id":135},{"start":{"row":12,"column":14},"end":{"row":12,"column":15},"action":"remove","lines":["y"]},{"start":{"row":12,"column":13},"end":{"row":12,"column":14},"action":"remove","lines":["r"]},{"start":{"row":12,"column":12},"end":{"row":12,"column":13},"action":"remove","lines":["p"]},{"start":{"row":12,"column":11},"end":{"row":12,"column":12},"action":"remove","lines":["."]},{"start":{"row":12,"column":10},"end":{"row":12,"column":11},"action":"remove","lines":["g"]},{"start":{"row":12,"column":9},"end":{"row":12,"column":10},"action":"remove","lines":["n"]}],[{"start":{"row":12,"column":8},"end":{"row":12,"column":9},"action":"remove","lines":["i"],"id":136},{"start":{"row":12,"column":7},"end":{"row":12,"column":8},"action":"remove","lines":["d"]},{"start":{"row":12,"column":6},"end":{"row":12,"column":7},"action":"remove","lines":["n"]},{"start":{"row":12,"column":5},"end":{"row":12,"column":6},"action":"remove","lines":["i"]},{"start":{"row":12,"column":4},"end":{"row":12,"column":5},"action":"remove","lines":["b"]},{"start":{"row":12,"column":2},"end":{"row":12,"column":4},"action":"remove","lines":["  "]},{"start":{"row":12,"column":0},"end":{"row":12,"column":2},"action":"remove","lines":["  "]}],[{"start":{"row":11,"column":31},"end":{"row":12,"column":0},"action":"remove","lines":["",""],"id":137}],[{"start":{"row":11,"column":31},"end":{"row":11,"column":36},"action":"remove","lines":["     "],"id":138},{"start":{"row":11,"column":31},"end":{"row":12,"column":0},"action":"insert","lines":["",""]},{"start":{"row":12,"column":0},"end":{"row":12,"column":4},"action":"insert","lines":["    "]}],[{"start":{"row":28,"column":13},"end":{"row":28,"column":14},"action":"remove","lines":["r"],"id":139},{"start":{"row":28,"column":12},"end":{"row":28,"column":13},"action":"remove","lines":["u"]},{"start":{"row":28,"column":11},"end":{"row":28,"column":12},"action":"remove","lines":["o"]},{"start":{"row":28,"column":10},"end":{"row":28,"column":11},"action":"remove","lines":["T"]}],[{"start":{"row":28,"column":10},"end":{"row":28,"column":11},"action":"insert","lines":["U"],"id":140},{"start":{"row":28,"column":11},"end":{"row":28,"column":12},"action":"insert","lines":["s"]},{"start":{"row":28,"column":12},"end":{"row":28,"column":13},"action":"insert","lines":["e"]},{"start":{"row":28,"column":13},"end":{"row":28,"column":14},"action":"insert","lines":["r"]}],[{"start":{"row":26,"column":0},"end":{"row":26,"column":17},"action":"remove","lines":["  # PUT /resource"],"id":141}],[{"start":{"row":21,"column":0},"end":{"row":21,"column":22},"action":"remove","lines":["  # GET /resource/edit"],"id":142}],[{"start":{"row":9,"column":2},"end":{"row":9,"column":18},"action":"remove","lines":["# POST /resource"],"id":143}],[{"start":{"row":36,"column":1},"end":{"row":36,"column":20},"action":"remove","lines":[" # DELETE /resource"],"id":144}],[{"start":{"row":27,"column":0},"end":{"row":27,"column":2},"action":"remove","lines":["  "],"id":145},{"start":{"row":28,"column":0},"end":{"row":28,"column":2},"action":"remove","lines":["  "]},{"start":{"row":29,"column":0},"end":{"row":29,"column":2},"action":"remove","lines":["  "]},{"start":{"row":30,"column":0},"end":{"row":30,"column":2},"action":"remove","lines":["  "]},{"start":{"row":31,"column":0},"end":{"row":31,"column":1},"action":"remove","lines":[" "]},{"start":{"row":32,"column":0},"end":{"row":32,"column":2},"action":"remove","lines":["  "]},{"start":{"row":33,"column":0},"end":{"row":33,"column":2},"action":"remove","lines":["  "]}],[{"start":{"row":29,"column":0},"end":{"row":29,"column":2},"action":"remove","lines":["  "],"id":146},{"start":{"row":30,"column":0},"end":{"row":30,"column":1},"action":"remove","lines":[" "]},{"start":{"row":32,"column":0},"end":{"row":32,"column":1},"action":"remove","lines":[" "]}],[{"start":{"row":27,"column":0},"end":{"row":27,"column":2},"action":"insert","lines":["  "],"id":147},{"start":{"row":28,"column":0},"end":{"row":28,"column":2},"action":"insert","lines":["  "]},{"start":{"row":29,"column":0},"end":{"row":29,"column":2},"action":"insert","lines":["  "]},{"start":{"row":30,"column":0},"end":{"row":30,"column":2},"action":"insert","lines":["  "]},{"start":{"row":31,"column":0},"end":{"row":31,"column":2},"action":"insert","lines":["  "]},{"start":{"row":32,"column":0},"end":{"row":32,"column":2},"action":"insert","lines":["  "]},{"start":{"row":33,"column":0},"end":{"row":33,"column":2},"action":"insert","lines":["  "]},{"start":{"row":34,"column":0},"end":{"row":34,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":28,"column":0},"end":{"row":28,"column":2},"action":"insert","lines":["  "],"id":148},{"start":{"row":29,"column":0},"end":{"row":29,"column":2},"action":"insert","lines":["  "]},{"start":{"row":30,"column":0},"end":{"row":30,"column":2},"action":"insert","lines":["  "]},{"start":{"row":31,"column":0},"end":{"row":31,"column":2},"action":"insert","lines":["  "]},{"start":{"row":32,"column":0},"end":{"row":32,"column":2},"action":"insert","lines":["  "]},{"start":{"row":33,"column":0},"end":{"row":33,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":29,"column":0},"end":{"row":29,"column":2},"action":"insert","lines":["  "],"id":149},{"start":{"row":30,"column":0},"end":{"row":30,"column":2},"action":"insert","lines":["  "]},{"start":{"row":31,"column":0},"end":{"row":31,"column":2},"action":"insert","lines":["  "]},{"start":{"row":32,"column":0},"end":{"row":32,"column":2},"action":"insert","lines":["  "]},{"start":{"row":33,"column":0},"end":{"row":33,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":13,"column":7},"end":{"row":13,"column":14},"action":"remove","lines":["#ログインする"],"id":150},{"start":{"row":13,"column":7},"end":{"row":13,"column":8},"action":"insert","lines":["b"]},{"start":{"row":13,"column":8},"end":{"row":13,"column":9},"action":"insert","lines":["i"]},{"start":{"row":13,"column":9},"end":{"row":13,"column":10},"action":"insert","lines":["n"]},{"start":{"row":13,"column":10},"end":{"row":13,"column":11},"action":"insert","lines":["d"]},{"start":{"row":13,"column":11},"end":{"row":13,"column":12},"action":"insert","lines":["i"]}],[{"start":{"row":13,"column":12},"end":{"row":13,"column":13},"action":"insert","lines":["n"],"id":151},{"start":{"row":13,"column":13},"end":{"row":13,"column":14},"action":"insert","lines":["g"]}],[{"start":{"row":13,"column":14},"end":{"row":13,"column":15},"action":"insert","lines":["."],"id":152},{"start":{"row":13,"column":15},"end":{"row":13,"column":16},"action":"insert","lines":["p"]},{"start":{"row":13,"column":16},"end":{"row":13,"column":17},"action":"insert","lines":["r"]},{"start":{"row":13,"column":17},"end":{"row":13,"column":18},"action":"insert","lines":["y"]}],[{"start":{"row":14,"column":19},"end":{"row":14,"column":35},"action":"remove","lines":["user_path(@user)"],"id":154}],[{"start":{"row":14,"column":19},"end":{"row":14,"column":20},"action":"insert","lines":["r"],"id":155},{"start":{"row":14,"column":20},"end":{"row":14,"column":21},"action":"insert","lines":["o"]},{"start":{"row":14,"column":21},"end":{"row":14,"column":22},"action":"insert","lines":["o"]},{"start":{"row":14,"column":22},"end":{"row":14,"column":23},"action":"insert","lines":["t"]}],[{"start":{"row":14,"column":23},"end":{"row":14,"column":24},"action":"insert","lines":["_"],"id":156},{"start":{"row":14,"column":24},"end":{"row":14,"column":25},"action":"insert","lines":["p"]},{"start":{"row":14,"column":25},"end":{"row":14,"column":26},"action":"insert","lines":["a"]},{"start":{"row":14,"column":26},"end":{"row":14,"column":27},"action":"insert","lines":["t"]},{"start":{"row":14,"column":27},"end":{"row":14,"column":28},"action":"insert","lines":["h"]}],[{"start":{"row":4,"column":2},"end":{"row":4,"column":20},"action":"insert","lines":["password_required?"],"id":157}],[{"start":{"row":3,"column":49},"end":{"row":4,"column":0},"action":"insert","lines":["",""],"id":158},{"start":{"row":4,"column":0},"end":{"row":4,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":4,"column":2},"end":{"row":4,"column":50},"action":"insert","lines":[" before_action :check_user_login?, only: [:show]"],"id":159}],[{"start":{"row":5,"column":2},"end":{"row":5,"column":20},"action":"remove","lines":["password_required?"],"id":160}],[{"start":{"row":4,"column":18},"end":{"row":4,"column":35},"action":"remove","lines":["check_user_login?"],"id":161},{"start":{"row":4,"column":18},"end":{"row":4,"column":36},"action":"insert","lines":["password_required?"]}],[{"start":{"row":4,"column":49},"end":{"row":4,"column":50},"action":"remove","lines":["w"],"id":162},{"start":{"row":4,"column":48},"end":{"row":4,"column":49},"action":"remove","lines":["o"]},{"start":{"row":4,"column":47},"end":{"row":4,"column":48},"action":"remove","lines":["h"]},{"start":{"row":4,"column":46},"end":{"row":4,"column":47},"action":"remove","lines":["s"]}],[{"start":{"row":4,"column":46},"end":{"row":4,"column":47},"action":"insert","lines":["u"],"id":163},{"start":{"row":4,"column":47},"end":{"row":4,"column":48},"action":"insert","lines":["p"]},{"start":{"row":4,"column":48},"end":{"row":4,"column":49},"action":"insert","lines":["d"]},{"start":{"row":4,"column":49},"end":{"row":4,"column":50},"action":"insert","lines":["a"]},{"start":{"row":4,"column":50},"end":{"row":4,"column":51},"action":"insert","lines":["t"]},{"start":{"row":4,"column":51},"end":{"row":4,"column":52},"action":"insert","lines":["e"]}],[{"start":{"row":4,"column":2},"end":{"row":4,"column":53},"action":"remove","lines":[" before_action :password_required?, only: [:update]"],"id":164}],[{"start":{"row":14,"column":17},"end":{"row":14,"column":18},"action":"remove","lines":["y"],"id":165},{"start":{"row":14,"column":16},"end":{"row":14,"column":17},"action":"remove","lines":["r"]},{"start":{"row":14,"column":15},"end":{"row":14,"column":16},"action":"remove","lines":["p"]},{"start":{"row":14,"column":14},"end":{"row":14,"column":15},"action":"remove","lines":["."]},{"start":{"row":14,"column":13},"end":{"row":14,"column":14},"action":"remove","lines":["g"]},{"start":{"row":14,"column":12},"end":{"row":14,"column":13},"action":"remove","lines":["n"]},{"start":{"row":14,"column":11},"end":{"row":14,"column":12},"action":"remove","lines":["i"]},{"start":{"row":14,"column":10},"end":{"row":14,"column":11},"action":"remove","lines":["d"]},{"start":{"row":14,"column":9},"end":{"row":14,"column":10},"action":"remove","lines":["n"]},{"start":{"row":14,"column":8},"end":{"row":14,"column":9},"action":"remove","lines":["i"]}],[{"start":{"row":14,"column":7},"end":{"row":14,"column":8},"action":"remove","lines":["b"],"id":166}],[{"start":{"row":14,"column":7},"end":{"row":14,"column":8},"action":"insert","lines":["c"],"id":167},{"start":{"row":14,"column":8},"end":{"row":14,"column":9},"action":"insert","lines":["u"]},{"start":{"row":14,"column":9},"end":{"row":14,"column":10},"action":"insert","lines":["r"]},{"start":{"row":14,"column":10},"end":{"row":14,"column":11},"action":"insert","lines":["r"]},{"start":{"row":14,"column":11},"end":{"row":14,"column":12},"action":"insert","lines":["e"]},{"start":{"row":14,"column":12},"end":{"row":14,"column":13},"action":"insert","lines":["n"]},{"start":{"row":14,"column":13},"end":{"row":14,"column":14},"action":"insert","lines":["t"]}],[{"start":{"row":14,"column":7},"end":{"row":14,"column":14},"action":"remove","lines":["current"],"id":168},{"start":{"row":14,"column":7},"end":{"row":14,"column":19},"action":"insert","lines":["current_user"]}],[{"start":{"row":14,"column":19},"end":{"row":14,"column":20},"action":"insert","lines":["="],"id":169},{"start":{"row":14,"column":20},"end":{"row":14,"column":21},"action":"insert","lines":["@"]}],[{"start":{"row":14,"column":21},"end":{"row":14,"column":22},"action":"insert","lines":["u"],"id":170},{"start":{"row":14,"column":22},"end":{"row":14,"column":23},"action":"insert","lines":["s"]},{"start":{"row":14,"column":23},"end":{"row":14,"column":24},"action":"insert","lines":["e"]},{"start":{"row":14,"column":24},"end":{"row":14,"column":25},"action":"insert","lines":["r"]}],[{"start":{"row":14,"column":19},"end":{"row":14,"column":20},"action":"insert","lines":[" "],"id":171}],[{"start":{"row":14,"column":21},"end":{"row":14,"column":22},"action":"insert","lines":[" "],"id":172}],[{"start":{"row":70,"column":84},"end":{"row":70,"column":85},"action":"remove","lines":[" "],"id":173}],[{"start":{"row":29,"column":37},"end":{"row":30,"column":0},"action":"insert","lines":["",""],"id":176},{"start":{"row":30,"column":0},"end":{"row":30,"column":4},"action":"insert","lines":["    "]},{"start":{"row":30,"column":4},"end":{"row":30,"column":5},"action":"insert","lines":["b"]},{"start":{"row":30,"column":5},"end":{"row":30,"column":6},"action":"insert","lines":["i"]},{"start":{"row":30,"column":6},"end":{"row":30,"column":7},"action":"insert","lines":["n"]}],[{"start":{"row":30,"column":7},"end":{"row":30,"column":8},"action":"insert","lines":["d"],"id":177},{"start":{"row":30,"column":8},"end":{"row":30,"column":9},"action":"insert","lines":["i"]},{"start":{"row":30,"column":9},"end":{"row":30,"column":10},"action":"insert","lines":["n"]},{"start":{"row":30,"column":10},"end":{"row":30,"column":11},"action":"insert","lines":["g"]},{"start":{"row":30,"column":11},"end":{"row":30,"column":12},"action":"insert","lines":["/"]}],[{"start":{"row":30,"column":12},"end":{"row":30,"column":13},"action":"insert","lines":["p"],"id":178},{"start":{"row":30,"column":13},"end":{"row":30,"column":14},"action":"insert","lines":["r"]},{"start":{"row":30,"column":14},"end":{"row":30,"column":15},"action":"insert","lines":["y"]}],[{"start":{"row":30,"column":11},"end":{"row":30,"column":12},"action":"remove","lines":["/"],"id":179}],[{"start":{"row":30,"column":11},"end":{"row":30,"column":12},"action":"insert","lines":["."],"id":180}],[{"start":{"row":30,"column":0},"end":{"row":30,"column":15},"action":"remove","lines":["    binding.pry"],"id":181},{"start":{"row":29,"column":37},"end":{"row":30,"column":0},"action":"remove","lines":["",""]}],[{"start":{"row":28,"column":12},"end":{"row":29,"column":0},"action":"insert","lines":["",""],"id":182},{"start":{"row":29,"column":0},"end":{"row":29,"column":4},"action":"insert","lines":["    "]},{"start":{"row":29,"column":4},"end":{"row":29,"column":5},"action":"insert","lines":["b"]},{"start":{"row":29,"column":5},"end":{"row":29,"column":6},"action":"insert","lines":["i"]},{"start":{"row":29,"column":6},"end":{"row":29,"column":7},"action":"insert","lines":["n"]}],[{"start":{"row":29,"column":7},"end":{"row":29,"column":8},"action":"insert","lines":["d"],"id":183},{"start":{"row":29,"column":8},"end":{"row":29,"column":9},"action":"insert","lines":["i"]},{"start":{"row":29,"column":9},"end":{"row":29,"column":10},"action":"insert","lines":["n"]},{"start":{"row":29,"column":10},"end":{"row":29,"column":11},"action":"insert","lines":["g"]}],[{"start":{"row":29,"column":11},"end":{"row":29,"column":12},"action":"insert","lines":["."],"id":184},{"start":{"row":29,"column":12},"end":{"row":29,"column":13},"action":"insert","lines":["p"]},{"start":{"row":29,"column":13},"end":{"row":29,"column":14},"action":"insert","lines":["r"]},{"start":{"row":29,"column":14},"end":{"row":29,"column":15},"action":"insert","lines":["y"]}],[{"start":{"row":29,"column":1},"end":{"row":29,"column":15},"action":"remove","lines":["   binding.pry"],"id":185}],[{"start":{"row":30,"column":23},"end":{"row":30,"column":24},"action":"remove","lines":["y"],"id":186},{"start":{"row":30,"column":22},"end":{"row":30,"column":23},"action":"remove","lines":["b"]},{"start":{"row":30,"column":21},"end":{"row":30,"column":22},"action":"remove","lines":["_"]}],[{"start":{"row":30,"column":32},"end":{"row":30,"column":33},"action":"remove","lines":["s"],"id":187},{"start":{"row":30,"column":31},"end":{"row":30,"column":32},"action":"remove","lines":["m"]},{"start":{"row":30,"column":30},"end":{"row":30,"column":31},"action":"remove","lines":["a"]},{"start":{"row":30,"column":29},"end":{"row":30,"column":30},"action":"remove","lines":["r"]},{"start":{"row":30,"column":28},"end":{"row":30,"column":29},"action":"remove","lines":["a"]},{"start":{"row":30,"column":27},"end":{"row":30,"column":28},"action":"remove","lines":["p"]},{"start":{"row":30,"column":26},"end":{"row":30,"column":27},"action":"remove","lines":["_"]},{"start":{"row":30,"column":25},"end":{"row":30,"column":26},"action":"remove","lines":["r"]}],[{"start":{"row":30,"column":24},"end":{"row":30,"column":25},"action":"remove","lines":["e"],"id":188},{"start":{"row":30,"column":23},"end":{"row":30,"column":24},"action":"remove","lines":["s"]},{"start":{"row":30,"column":22},"end":{"row":30,"column":23},"action":"remove","lines":["u"]}],[{"start":{"row":30,"column":4},"end":{"row":30,"column":23},"action":"remove","lines":["@user = User.find()"],"id":189},{"start":{"row":30,"column":4},"end":{"row":30,"column":20},"action":"insert","lines":[" user_find_by_id"]}],[{"start":{"row":31,"column":22},"end":{"row":31,"column":23},"action":"insert","lines":[":"],"id":192},{"start":{"row":31,"column":23},"end":{"row":31,"column":24},"action":"insert","lines":["u"]},{"start":{"row":31,"column":24},"end":{"row":31,"column":25},"action":"insert","lines":["s"]},{"start":{"row":31,"column":25},"end":{"row":31,"column":26},"action":"insert","lines":["e"]},{"start":{"row":31,"column":26},"end":{"row":31,"column":27},"action":"insert","lines":["r"]}],[{"start":{"row":31,"column":27},"end":{"row":31,"column":28},"action":"insert","lines":[","],"id":193}],[{"start":{"row":31,"column":27},"end":{"row":31,"column":28},"action":"remove","lines":[","],"id":194},{"start":{"row":31,"column":26},"end":{"row":31,"column":27},"action":"remove","lines":["r"]},{"start":{"row":31,"column":25},"end":{"row":31,"column":26},"action":"remove","lines":["e"]},{"start":{"row":31,"column":24},"end":{"row":31,"column":25},"action":"remove","lines":["s"]},{"start":{"row":31,"column":23},"end":{"row":31,"column":24},"action":"remove","lines":["u"]},{"start":{"row":31,"column":22},"end":{"row":31,"column":23},"action":"remove","lines":[":"]}],[{"start":{"row":31,"column":22},"end":{"row":31,"column":23},"action":"insert","lines":[":"],"id":195}],[{"start":{"row":31,"column":22},"end":{"row":31,"column":23},"action":"remove","lines":[":"],"id":196}],[{"start":{"row":31,"column":22},"end":{"row":31,"column":23},"action":"insert","lines":[":"],"id":197}],[{"start":{"row":31,"column":34},"end":{"row":31,"column":42},"action":"insert","lines":[".to_hash"],"id":198}],[{"start":{"row":31,"column":41},"end":{"row":31,"column":42},"action":"remove","lines":["h"],"id":199},{"start":{"row":31,"column":40},"end":{"row":31,"column":41},"action":"remove","lines":["s"]},{"start":{"row":31,"column":39},"end":{"row":31,"column":40},"action":"remove","lines":["a"]},{"start":{"row":31,"column":38},"end":{"row":31,"column":39},"action":"remove","lines":["h"]},{"start":{"row":31,"column":37},"end":{"row":31,"column":38},"action":"remove","lines":["_"]},{"start":{"row":31,"column":36},"end":{"row":31,"column":37},"action":"remove","lines":["o"]},{"start":{"row":31,"column":35},"end":{"row":31,"column":36},"action":"remove","lines":["t"]},{"start":{"row":31,"column":34},"end":{"row":31,"column":35},"action":"remove","lines":["."]}],[{"start":{"row":31,"column":22},"end":{"row":31,"column":23},"action":"remove","lines":[":"],"id":200}],[{"start":{"row":29,"column":0},"end":{"row":29,"column":1},"action":"remove","lines":[" "],"id":201},{"start":{"row":28,"column":12},"end":{"row":29,"column":0},"action":"remove","lines":["",""]}],[{"start":{"row":29,"column":20},"end":{"row":30,"column":0},"action":"insert","lines":["",""],"id":202},{"start":{"row":30,"column":0},"end":{"row":30,"column":5},"action":"insert","lines":["     "]},{"start":{"row":30,"column":5},"end":{"row":30,"column":6},"action":"insert","lines":["b"]},{"start":{"row":30,"column":6},"end":{"row":30,"column":7},"action":"insert","lines":["i"]}],[{"start":{"row":30,"column":7},"end":{"row":30,"column":8},"action":"insert","lines":["n"],"id":203},{"start":{"row":30,"column":8},"end":{"row":30,"column":9},"action":"insert","lines":["d"]},{"start":{"row":30,"column":9},"end":{"row":30,"column":10},"action":"insert","lines":["i"]},{"start":{"row":30,"column":10},"end":{"row":30,"column":11},"action":"insert","lines":["n"]},{"start":{"row":30,"column":11},"end":{"row":30,"column":12},"action":"insert","lines":["g"]}],[{"start":{"row":30,"column":12},"end":{"row":30,"column":13},"action":"insert","lines":["."],"id":204},{"start":{"row":30,"column":13},"end":{"row":30,"column":14},"action":"insert","lines":["p"]},{"start":{"row":30,"column":14},"end":{"row":30,"column":15},"action":"insert","lines":["r"]},{"start":{"row":30,"column":15},"end":{"row":30,"column":16},"action":"insert","lines":["y"]}],[{"start":{"row":72,"column":5},"end":{"row":73,"column":0},"action":"insert","lines":["",""],"id":205},{"start":{"row":73,"column":0},"end":{"row":73,"column":2},"action":"insert","lines":["  "]},{"start":{"row":73,"column":2},"end":{"row":74,"column":0},"action":"insert","lines":["",""]},{"start":{"row":74,"column":0},"end":{"row":74,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":74,"column":2},"end":{"row":76,"column":5},"action":"insert","lines":["  def set_dafault_image","    if images.","  end"],"id":206}],[{"start":{"row":74,"column":2},"end":{"row":74,"column":4},"action":"remove","lines":["  "],"id":207}],[{"start":{"row":75,"column":13},"end":{"row":75,"column":14},"action":"remove","lines":["."],"id":208}],[{"start":{"row":74,"column":23},"end":{"row":74,"column":25},"action":"insert","lines":["()"],"id":209}],[{"start":{"row":74,"column":24},"end":{"row":74,"column":25},"action":"insert","lines":["u"],"id":210},{"start":{"row":74,"column":25},"end":{"row":74,"column":26},"action":"insert","lines":["s"]},{"start":{"row":74,"column":26},"end":{"row":74,"column":27},"action":"insert","lines":["e"]},{"start":{"row":74,"column":27},"end":{"row":74,"column":28},"action":"insert","lines":["r"]}],[{"start":{"row":75,"column":7},"end":{"row":75,"column":8},"action":"insert","lines":["u"],"id":211},{"start":{"row":75,"column":8},"end":{"row":75,"column":9},"action":"insert","lines":["s"]},{"start":{"row":75,"column":9},"end":{"row":75,"column":10},"action":"insert","lines":["e"]},{"start":{"row":75,"column":10},"end":{"row":75,"column":11},"action":"insert","lines":["r"]},{"start":{"row":75,"column":11},"end":{"row":75,"column":12},"action":"insert","lines":["."]}],[{"start":{"row":75,"column":17},"end":{"row":75,"column":18},"action":"remove","lines":["s"],"id":212}],[{"start":{"row":75,"column":17},"end":{"row":75,"column":18},"action":"insert","lines":["."],"id":213},{"start":{"row":75,"column":18},"end":{"row":75,"column":19},"action":"insert","lines":["n"]},{"start":{"row":75,"column":19},"end":{"row":75,"column":20},"action":"insert","lines":["i"]},{"start":{"row":75,"column":20},"end":{"row":75,"column":21},"action":"insert","lines":["l"]}],[{"start":{"row":75,"column":21},"end":{"row":75,"column":22},"action":"insert","lines":["?"],"id":214}],[{"start":{"row":75,"column":22},"end":{"row":76,"column":0},"action":"insert","lines":["",""],"id":215},{"start":{"row":76,"column":0},"end":{"row":76,"column":6},"action":"insert","lines":["      "]},{"start":{"row":76,"column":6},"end":{"row":76,"column":7},"action":"insert","lines":["e"]},{"start":{"row":76,"column":7},"end":{"row":76,"column":8},"action":"insert","lines":["n"]}],[{"start":{"row":76,"column":8},"end":{"row":76,"column":9},"action":"insert","lines":["d"],"id":216},{"start":{"row":76,"column":4},"end":{"row":76,"column":6},"action":"remove","lines":["  "]}],[{"start":{"row":75,"column":22},"end":{"row":76,"column":0},"action":"insert","lines":["",""],"id":217},{"start":{"row":76,"column":0},"end":{"row":76,"column":6},"action":"insert","lines":["      "]},{"start":{"row":76,"column":6},"end":{"row":76,"column":7},"action":"insert","lines":["u"]},{"start":{"row":76,"column":7},"end":{"row":76,"column":8},"action":"insert","lines":["s"]},{"start":{"row":76,"column":8},"end":{"row":76,"column":9},"action":"insert","lines":["e"]}],[{"start":{"row":76,"column":9},"end":{"row":76,"column":10},"action":"insert","lines":["r"],"id":218}],[{"start":{"row":76,"column":6},"end":{"row":76,"column":10},"action":"remove","lines":["user"],"id":219},{"start":{"row":76,"column":6},"end":{"row":76,"column":10},"action":"insert","lines":["user"]}],[{"start":{"row":76,"column":10},"end":{"row":76,"column":11},"action":"insert","lines":["/"],"id":220},{"start":{"row":76,"column":11},"end":{"row":76,"column":12},"action":"insert","lines":["i"]},{"start":{"row":76,"column":12},"end":{"row":76,"column":13},"action":"insert","lines":["m"]},{"start":{"row":76,"column":13},"end":{"row":76,"column":14},"action":"insert","lines":["a"]},{"start":{"row":76,"column":14},"end":{"row":76,"column":15},"action":"insert","lines":["g"]},{"start":{"row":76,"column":15},"end":{"row":76,"column":16},"action":"insert","lines":["e"]}],[{"start":{"row":76,"column":10},"end":{"row":76,"column":11},"action":"remove","lines":["/"],"id":221}],[{"start":{"row":76,"column":10},"end":{"row":76,"column":11},"action":"insert","lines":["."],"id":222}],[{"start":{"row":76,"column":16},"end":{"row":76,"column":17},"action":"insert","lines":["="],"id":223}],[{"start":{"row":76,"column":17},"end":{"row":76,"column":18},"action":"insert","lines":[" "],"id":224}],[{"start":{"row":76,"column":18},"end":{"row":76,"column":20},"action":"insert","lines":["\"\""],"id":225}],[{"start":{"row":76,"column":19},"end":{"row":76,"column":20},"action":"insert","lines":["g"],"id":226},{"start":{"row":76,"column":20},"end":{"row":76,"column":21},"action":"insert","lines":["u"]},{"start":{"row":76,"column":21},"end":{"row":76,"column":22},"action":"insert","lines":["e"]},{"start":{"row":76,"column":22},"end":{"row":76,"column":23},"action":"insert","lines":["s"]},{"start":{"row":76,"column":23},"end":{"row":76,"column":24},"action":"insert","lines":["t"]}],[{"start":{"row":76,"column":24},"end":{"row":76,"column":25},"action":"insert","lines":["."],"id":227},{"start":{"row":76,"column":25},"end":{"row":76,"column":26},"action":"insert","lines":["j"]},{"start":{"row":76,"column":26},"end":{"row":76,"column":27},"action":"insert","lines":["p"]},{"start":{"row":76,"column":27},"end":{"row":76,"column":28},"action":"insert","lines":["g"]}],[{"start":{"row":13,"column":17},"end":{"row":14,"column":0},"action":"insert","lines":["",""],"id":228},{"start":{"row":14,"column":0},"end":{"row":14,"column":6},"action":"insert","lines":["      "]},{"start":{"row":14,"column":6},"end":{"row":14,"column":7},"action":"insert","lines":[" "]}],[{"start":{"row":14,"column":7},"end":{"row":14,"column":30},"action":"insert","lines":["set_dafault_image(user)"],"id":229}],[{"start":{"row":14,"column":25},"end":{"row":14,"column":26},"action":"insert","lines":["@"],"id":230}],[{"start":{"row":32,"column":34},"end":{"row":33,"column":0},"action":"insert","lines":["",""],"id":231},{"start":{"row":33,"column":0},"end":{"row":33,"column":8},"action":"insert","lines":["        "]}],[{"start":{"row":33,"column":8},"end":{"row":33,"column":31},"action":"insert","lines":["set_dafault_image(user)"],"id":232}],[{"start":{"row":33,"column":26},"end":{"row":33,"column":27},"action":"insert","lines":["@"],"id":233}]]},"ace":{"folds":[{"start":{"row":41,"column":13},"end":{"row":43,"column":17},"placeholder":"..."},{"start":{"row":46,"column":10},"end":{"row":48,"column":42},"placeholder":"..."},{"start":{"row":51,"column":16},"end":{"row":54,"column":19},"placeholder":"..."},{"start":{"row":57,"column":15},"end":{"row":60,"column":19},"placeholder":"..."},{"start":{"row":63,"column":14},"end":{"row":64,"column":54},"placeholder":"..."}],"scrolltop":844,"scrollleft":0,"selection":{"start":{"row":33,"column":27},"end":{"row":33,"column":27},"isBackwards":true},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1566528117695}