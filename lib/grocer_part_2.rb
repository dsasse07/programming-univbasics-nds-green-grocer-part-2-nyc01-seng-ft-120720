require_relative './part_1_solution.rb'
require 'pry'

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
  binding.pry
  
  cart.each do |cart_item|
    coupons.each do |coupon_item|
      if cart_item[:item] == coupon_item[:item]
       
        cart_item[:count] = cart_item[:count] - coupon_item[:num]
        
        cart << {:item => "#{cart_item[:item]} W/COUPON", :price => (coupon_item[:cost]/coupon_item[:num]), :clearance => cart_item[:clearance], :count => coupon_item[:num]}
      end
    end
  end
  
  cart
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
