class RootController < ApplicationController
  def root
    redirect_to top_up_index_path
  end
end
