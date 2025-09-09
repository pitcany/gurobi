\ Model Poker Chips
\ LP format - for model browsing. Use MPS format to capture full model detail.
Maximize
  chips[one] + chips[five] + chips[ten] + chips[twenty-five]
   + chips[one_hundred] + chips[five_hundred] + chips[thousand]
Subject To
 ingredient_usage[clay]: 18 chips[one] + 17 chips[five] + 16 chips[ten]
   + 13 chips[twenty-five] + 10 chips[one_hundred] + 10 chips[five_hundred]
   + 10 chips[thousand] <= 5000
 ingredient_usage[lead]: 2 chips[five] + 3 chips[ten]
   + 4.5 chips[twenty-five] + 6 chips[one_hundred]
   + 8.5 chips[five_hundred] + 9.5 chips[thousand] <= 1500
 ingredient_usage[gold]: 2 chips[thousand] <= 50
 ingredient_usage[silver]: chips[one_hundred] + 2 chips[five_hundred]
   <= 500
 low_chip_ub[one]: 0.8 chips[one] - 0.2 chips[five] - 0.2 chips[ten]
   - 0.2 chips[twenty-five] - 0.2 chips[one_hundred]
   - 0.2 chips[five_hundred] - 0.2 chips[thousand] <= 0
 low_chip_ub[five]: - 0.2 chips[one] + 0.8 chips[five] - 0.2 chips[ten]
   - 0.2 chips[twenty-five] - 0.2 chips[one_hundred]
   - 0.2 chips[five_hundred] - 0.2 chips[thousand] <= 0
 low_chip_ub[ten]: - 0.2 chips[one] - 0.2 chips[five] + 0.8 chips[ten]
   - 0.2 chips[twenty-five] - 0.2 chips[one_hundred]
   - 0.2 chips[five_hundred] - 0.2 chips[thousand] <= 0
 low_chip_ub[twenty-five]: - 0.2 chips[one] - 0.2 chips[five]
   - 0.2 chips[ten] + 0.8 chips[twenty-five] - 0.2 chips[one_hundred]
   - 0.2 chips[five_hundred] - 0.2 chips[thousand] <= 0
 high_chip_lb[one_hundred]: - 0.05 chips[one] - 0.05 chips[five]
   - 0.05 chips[ten] - 0.05 chips[twenty-five] + 0.95 chips[one_hundred]
   - 0.05 chips[five_hundred] - 0.05 chips[thousand] >= 0
 high_chip_lb[five_hundred]: - 0.05 chips[one] - 0.05 chips[five]
   - 0.05 chips[ten] - 0.05 chips[twenty-five] - 0.05 chips[one_hundred]
   + 0.95 chips[five_hundred] - 0.05 chips[thousand] >= 0
 high_chip_lb[thousand]: - 0.05 chips[one] - 0.05 chips[five]
   - 0.05 chips[ten] - 0.05 chips[twenty-five] - 0.05 chips[one_hundred]
   - 0.05 chips[five_hundred] + 0.95 chips[thousand] >= 0
 max_25[one]: - chips[one] + chips[twenty-five] >= 0
 max_25[five]: - chips[five] + chips[twenty-five] >= 0
 max_25[ten]: - chips[ten] + chips[twenty-five] >= 0
 max_25[one_hundred]: chips[twenty-five] - chips[one_hundred] >= 0
 max_25[five_hundred]: chips[twenty-five] - chips[five_hundred] >= 0
 max_25[thousand]: chips[twenty-five] - chips[thousand] >= 0
Bounds
Generals
 chips[one] chips[five] chips[ten] chips[twenty-five] chips[one_hundred]
 chips[five_hundred] chips[thousand]
End
