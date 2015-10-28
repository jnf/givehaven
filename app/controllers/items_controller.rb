require "amazon_api"
include GiveHavenAPIs

class ItemsController < ApplicationController
  before_action :logged_in

  def index
    # search
    # locate_item
    @response = AmazonAPI.search.to_h
    # @response = results.to_h
  end

  # def search
  #   set_request
  #   @response = request.item_lookup(
  #     query: {
  #       'ItemId' => '0679753354'
  #     }
  #   )
  # end

  private
  # def set_request
  #   @request = Vacuum.new
  #   @request.configure(
  #     aws_access_key_id: 'AKIAJIRR6DWE6FXBBCKA',
  #     aws_secret_access_key: '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',
  #     associate_tag: 'give0b4-20'
  #     )
  # end

  # def locate_item
  #  @response = HTTParty.get("http://webservices.amazon.com/onca/xml?AWSAccessKeyId=AKIAJIRR6DWE6FXBBCKA&AssociateTag=give0b4-20&Keywords=toilet%20paper&Operation=ItemSearch&ResponseGroup=ItemAttributes&SearchIndex=All&Service=AWSECommerceService&Timestamp=2015-10-28T20%3A11%3A49.000Z&Signature=0vKLA%2B0YNljrjLalo1BUq0EyzDIMgWN2ixzV7cySZys%3D")
  # end


end
