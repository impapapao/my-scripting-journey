
shipping_cost = 1.20

customer_basket_weight = float(input('Enter the weight of the customer basket (Kg): '))
customer_basket_cost = float(input('Enter the customer\'s basket cost ($):'))

if customer_basket_weight > 100:
  print('Free shipping!')
  total_cost = customer_basket_cost

else:
  
  total_cost = customer_basket_cost + (customer_basket_weight * shipping_cost)

print('The total cost is ' + str(total_cost))
