Maintenance Automation

CDE 8946, 8947, 10292, 22089, 33804, 33807, 45213, 45214

Main Ticket CDE-94701
￼
Test Case 1 CDE-8946
￼
Scenario: [Web][Kasir-RRP][POS] Create Transaction - Edit stock of unavailable product (Increase stock)

Given the user is on the AYO Kasir web with products already in the cart 
When product stock in cart is empty
And user edit stock to increase stock
Then product will be eligible to buy in cart and user can choose how many product to buy

Test Case 2 CDE-8947 
￼
Scenario: [WEB][Kasir-RRP][POS] Create Transaction - Edit stock of available product (Clear/empty stock)

Given the user is on the AYO Kasir web with products already in the cart 
When product stock in cart is available
And user edit stock to clear/empty stock
Then system will grey out empty product and will not be used in final transaction

Test Case 3 CDE-10292
￼
Scenario: [WEB][Kasir-RRP-Kiosk-Owner][Produk] Ubah Produk - Disable edit price

Given The user is on the Produk page
When The user attempts to edit the price
Then The edit price option should be disabled

Test Case 4 CDE-10293 (Done) 10 Nov
￼
Scenario: [WEB][Kasir-RRP-Kiosk-Owner][Produk] Import Produk - Ignored the edited price

Given The user is on the Produk page
When The user imports product data with edited prices
Then The system should ignore the edited prices

Test Case 5 CDE-10294 (Done) 10 Nov
￼
Scenario: [WEB][Kasir-RRP-Kiosk-Owner][Produk] Import Produk - Failed to add new SKU

Given The user is on the Produk page
When The user imports product data with new SKUs
Then The system should display an error message on a preview

Test Case 6 CDE-22089
￼
Scenario : [Web][Ayo Kasir][Pembelian] Automatically update stock for existing product

Given the user is on "Menu Pembelian" page
When the user checks incoming purchases and check product stock in "Produk" Menu
Then the product stock should be increased based on the purchase quantity

Test Case 7 CDE-29664
￼
Scenario : [Web][Ayo Kasir][Kasir] Successfully View Products in the New Product Category

Given the user is logged in to AYO Kasir
And the user is on the "Kasir Menu" page
When the user selects the "Produk Baru" category filter
Then the system displays all products categorized as "Produk Baru" without any error

Test Case 8 CDE-30295
￼
Scenario : [Web][Ayo Kasir][Produk] Admin RRP edit stock product

Given the user has logged in on Ayo Kasir
And the user clicks the "Produk" menu
When the user clicks icon edit 
And changes product stock 
Then the admin product stock is successfully updated
And the changes are inserted into the log_stok_history table
And the staff stock remains unchanged

Test Case 9 CDE-31720
￼
￼
Given user is on the Produk page  
When user selects a device product and edits the stock value  
Then system successfully updates the stock  
And  does not apply any stock limitation

Test Case 10 CDE-31722
￼
Given user is on the Produk page
When user selects multiple device products and updates their stock values  
Then system successfully applies the changes  
And does not apply any stock limitation

Test Case 11 CDE-33084
￼
Given user is on create custom bundle page
When user try to set minimum quantity with negative value
Then user should not see the field filled

Test Case 12 CDE-33087
￼
Given user on edit product bundles page
When user try to edit maximum quantity with non numeric values
Then user should not see the values change

Test Case 13 CDE-33810 Done
￼
Scenario : [Web] [Ayo Kasir - Admin] [Produk] Admin export product data after approves the returned stock from staff

Given the user is on the "Produk" menu
And the staff has requested to return the product stock
And the user has approved the returned product stock
When the user exports the product data
Then the data should be exported successfully
And the exported file should include the columns "Reserve Stock" and one column for each staff name
And the value in the "Reserve Stock" column should be 0
And each staff name column should reflect the updated quantity after the return is approved

Test Case 14 CDE-33813
￼
Scenario : [Web] [Ayo Kasir - Admin] [Produk] Admin export product data after rejects the returned stock

Given the user is on the "Produk" menu
And the staff  has requested to returned the product stock
And the user has rejected the transferred stock
When the user exports the product data
Then the data should be exported successfully
And the exported file should include the columns "Reserve Stock" and one column for each staff name
And the values in "Reserve Stock" should be 0
And each staff name column should show the quantity of product stock that was previously approved and has not changed

Test Case 15 CDE-33816
￼
Scenario : [Web] [Ayo Kasir - Admin] [Produk] Admin export product data after partially rejects the return stock request

Given the user is on the "Produk" menu
And the staff has requested to return the product stock
And the user partially rejected the return product request
When the user exports the product data
Then the data should be exported successfully
And the exported file should include the columns "Reserve Stock" and one column for each staff name
And the value in "Reserve Stock" column should be 0
And the staff name column should show the remaining quantity including the rejected return amount

Test Case 16 CDE-33819
￼
Scenario : [Web] [Ayo Kasir - Admin] [Produk] Admin export product data with mixed staff transfer statuses

Given the user is on the "Produk" menu
And the user has transferred product stock to Staff 1, Staff 2, and Staff 3
And Staff 1 has approved the transferred stock
And Staff 2 has rejected the transferred stock
And Staff 3 has not yet responded to the transfer request
When the user exports the product data
Then the data should be exported successfully
And the exported file should include the columns "Reserve Stock", "Staff 1", "Staff 2", and "Staff 3"
And the "Staff 1" column should show the quantity of stock that was approved
And the "Staff 2" and "Staff 3" columns should show 0
And the "Reserve Stock" column should include the stock pending for Staff 3
And the stock "Staff 2" returned to admin stock

Test Case 17 CDE-33822
￼
Scenario : [Web] [Ayo Kasir - Admin] [Produk] Admin export product data after staff return stock with mixed approval statuses

Given the user is on the "Produk" menu
And Staff 1 has returned product stock and the return was approved
And Staff 2 has returned product stock and the return was rejected
And Staff 3 has returned product stock and the return was partially approved
When the user exports the product data
Then the data should be exported successfully
And the exported file should include the columns "Reserve Stock", "Staff 1", "Staff 2", and "Staff 3"
And the value in "Reserve Stock" column should be 0
And the value in "Staff 1" column should be 0
And the "Staff 2" column should show their original stock (no change due to rejection)
And the "Staff 3" column should show their remaining stock after the partial return

Test Case 18 CDE-37938
￼
Given the retailer is on Produk page
When the retailer export product data as XLSX file
Then system download XLSX file
And all retailer's category and subcategories are shown

Test Case 19 CDE-37941
￼
Given the retailer has import file preview opened
When the retailer proceed import
Then system update product data based on imported file

Test Case 20 CDE-42904
￼
Given the retailer is on Produk - Edit page
And the retailer fill required input field
When the retailer save and confirm product
Then redirect to product list page and show message

Test Case 21 CDE-45213
￼
Given the user is logged in as Staff
And the user has Stock Admin access
And the Edit Stock permission in the matrix setting is enabled
And there is an existing product stock
When the Staff edits the product stock
Then the system should successfully save the stock changes
And the updated stock value should be displayed correctly

Test Case 22 CDE-45214
￼
Given the user is logged in as Staff
And the Staff holds their own stock
And the product stock belongs to the Staff
When the Staff attempts to edit the product stock
Then the system should prevent the stock from being edited
And an authorization error message should be displayed

Test Case 23 CDE-49751
￼
Given the user is logged in as a staff who has edit permission and carries own stock
When the user edits a product 
And submits the product changes
Then the system should fail to update the product
And an error popup should be displayed
