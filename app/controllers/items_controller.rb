class ItemsController < ApplicationController
  before_action :logged_in
  req = Vacuum.new

  req.configure key: ENV["AWS_PRODUCT_KEY"],
                secret: ENV["AWS_SECRET_KEY"],
                tag:    'givheaven'

end
