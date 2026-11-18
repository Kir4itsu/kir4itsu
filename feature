rkiyosak@PMIIDIDNL19843 ayo-regression-new % FEATURES=special_event_points npx bddgen
  
npx playwright test \              
  --grep "CDE-79943" \
  --workers=1 \
  --headed
npm notice run cucumber-playwright@1.0.0 npx
npm notice run 'bddgen'
(node:16780) [DEP0205] DeprecationWarning: `module.register()` is deprecated. Use `module.registerHooks()` instead.
(Use `node --trace-deprecation ...` to show where the warning was created)
[CONFIG] FEATURES override -> running:
  tests/features/**/special_event_points.feature
(node:16780) NOTE: The AWS SDK for JavaScript (v2) has reached end-of-support.
It will no longer receive updates or releases.

Please migrate your code to use AWS SDK for JavaScript (v3).
For more information, check the blog post at https://a.co/cUPnyil
npm notice run cucumber-playwright@1.0.0 npx
npm notice run 'playwright' test --grep CDE-79943 --workers=1 --headed
(node:16797) [DEP0205] DeprecationWarning: `module.register()` is deprecated. Use `module.registerHooks()` instead.
(Use `node --trace-deprecation ...` to show where the warning was created)
[GLOBAL SETUP][LOCKS] Cleared stale account locks: /Users/rkiyosak/ayo-regression-new/.account-locks
[MATRIX] Skipped (set MATRIX_SETUP=on to run)
[REDIS] Connected to qa-ayo-src-cluster.fdmb7j.ng.0001.apse1.cache.amazonaws.com:6379
[GLOBAL SETUP][REDIS] Key not found: AYO_CACHEcategory_group_category_id
[REDIS] Disconnected

Running 1 test using 1 worker

(node:16802) [DEP0205] DeprecationWarning: `module.register()` is deprecated. Use `module.registerHooks()` instead.
(Use `node --trace-deprecation ...` to show where the warning was created)
     1 … Hooks › BeforeEach Hooks › BeforeEach hook @resetOrderIpMiles @CDE-79943 @continue @clearCart @critical
(node:16802) NOTE: The AWS SDK for JavaScript (v2) has reached end-of-support.
It will no longer receive updates or releases.

Please migrate your code to use AWS SDK for JavaScript (v3).
For more information, check the blog post at https://a.co/cUPnyil
Available tags: ["@resetOrderIpMiles","@CDE-79943","@continue","@clearCart","@critical"]
     1 … Hooks › BeforeEach Hooks › BeforeEach hook @resetOrderIpMiles @CDE-79943 @continue @clearCart @critical
All active sessions: 
     1 …existing IQOS member for monthly limit test @resetOrderIpMiles @CDE-79943 @continue @clearCart @critical
[SETUP] Added route to bypass Settle EDC popup on login
No existing session found, attempting to restore from file for group: default
[STATE] Looking for state file: /Users/rkiyosak/ayo-regression-new/.features-gen/tests/features/iqos_xp/special_event/special_event_points.feature.spec.js
[STATE] Retrieved from file: found
[STATE] Restored state from [WEB][AYO Kasir][Login] Login with IQOS XP Account
Successfully restored state for group: default
[GLOBAL] Stored session with ID: default
<<<<<<<<< PERFORMING SCENARIO >>>>>>>>>>>
Scenario: [WEB][AYO Kasir][Partner Program] Member - Receive partial points when reaching monthly limit
     1 …vent monthly limit" member through the cart @resetOrderIpMiles @CDE-79943 @continue @clearCart @criticalrtner Program] Member - Receive partial points when reaching monthly limit"
{ status: true, message: 'Order IP miles date successfully updated' }
[Order IP Miles] Reset date to 2026-11-17 13:35:18 for user 6057658
[REDIS] Connected to qa-ayo-src-cluster.fdmb7j.ng.0001.apse1.cache.amazonaws.com:6379
[Redis] Deleted survey-limit cache: cashier_order_api_qa_cache_has_done_survey:6057658
     1 … order success screen and chooses XP points @resetOrderIpMiles @CDE-79943 @continue @clearCart @critical
[MONTHLY LIMIT] Using existing member: Linggar.Pratama@contracted.sampoerna.com / 82145958327
[DEBUG XP] Raw XP text: "204XP"
[DEBUG XP] Parsed XP: 204
[MONTHLY LIMIT] XP before survey: 204
[Worker 0] Starting step: "User buys IQOS Test Iluma for the "special event monthly limit" member through the cart" in "[WEB][AYO Kasir][Partner Program] Member - Receive partial points when reaching monthly limit"
[CartPage] Previous cigarette brand question not shown
[CartPage.toggleHavButton] HAV toggle isChecked: true
[CartPage.toggleHavButton] HAV toggle isDisabled: false
[CartPage.toggleHavButton] HAV already ON, leaving as-is
[Worker 0] Starting step: "User continues the survey from the order success screen and chooses XP points" in "[WEB][AYO Kasir][Partner Program] Member - Receive partial points when reaching monthly limit"
[DEBUG] survey title visible: true
[DEBUG] radix dialog visible: true
[DEBUG] star survey visible: false
[DEBUG] Radix star count: 6
[DEBUG] Selected 5-star rating
[DEBUG] Radio group count: 0
[DEBUG] confirm submit count: 1
[DEBUG] confirm submit visible: true
[DEBUG] confirm dialog still visible: false
[DEBUG] body text: Survei berhasil dikirim
AYO KASIR
IQOS XP RRP Kiosk
Keping
0
Saldo
Rp 0
Kasir
Pembelian
Toko Online
Laporan
Produk
400
Replenishment
Langganan
Bantuan
Closing
Registrasi Perangkat
Scan Barcode
Filter
Pinjam Device
New Member
IQOS XP
PRODUK BARU
PALING LAKU
ACCESSORIES
CONSUMABLES
DEVICE
OTHERS SFP
Rp 1.000.000

IQOS Test Iluma

Stock
976
Kasir
Laporan
400
Produk
Replenishment
IQOS XP
i

Jangan tutup atau refresh halaman ini. Aksi tidak dapat dikembalikan

Silakan pilih di bawah ini:

Poin XP
     1 …t the monthly limit of 100 XP out of 101 XP @resetOrderIpMiles @CDE-79943 @continue @clearCart @critical
+200XP
instanv
instan oos
voucher limit
     1 …er Hooks › AfterEach Hooks › AfterEach hook @resetOrderIpMiles @CDE-79943 @continue @clearCart @critical
Kembali
Lanjutkan
[DEBUG] Poin visible: true
     1 …er Hooks › AfterEach Hooks › AfterEach hook @resetOrderIpMiles @CDE-79943 @continue @clearCart @critical
[SURVEY] Poin option offers: +200XP
[Worker 0] Starting step: "Member XP should be capped at the monthly limit of 100 XP out of 101 XP" in "[WEB][AYO Kasir][Partner Program] Member - Receive partial points when reaching monthly limit"
[DEBUG XP] Raw XP text: "404XP"
     1 …nthly limit › After Hooks › AfterEach Hooks @resetOrderIpMiles @CDE-79943 @continue @clearCart @critical
  ✘  1 …l points when reaching monthly limit @resetOrderIpMiles @CDE-79943 @continue @clearCart @critical (2.3m)
Cart clearing skipped or failed: TimeoutError: locator.click: Timeout 60000ms exceeded.
Call log:
  - waiting for getByTestId('continueToTransactionButton').first()

[STATE] Saved worker state to file: /Users/rkiyosak/ayo-regression-new/.worker-states/_Users_rkiyosak_ayo-regression-new_.features-gen_tests_features_iqos_xp_special_event_special_event_points.feature.spec.js.json

Taking screenshot

Keeping session alive


  1) .features-gen/tests/features/iqos_xp/special_event/special_event_points.feature.spec.js:28:7 › Special Event Points - Survey XP Earning › [WEB][AYO Kasir][Partner Program] Member - Receive partial points when reaching monthly limit @resetOrderIpMiles @CDE-79943 @continue @clearCart @critical › Then Member XP should be capped at the monthly limit of 100 XP out of 101 XP 

    Error: expect(received).toBeLessThan(expected)

    Expected: < 101
    Received:   200

       at ../tests/step_definitions/bottom_navigation/cashier/iqos_xp/special_event_points.spec.ts:395

      393 |     // Partial: the member got points, but only up to the limit, not the full reward.
      394 |     expect(xpGained).toBeGreaterThan(0);
    > 395 |     expect(xpGained).toBeLessThan(fullReward);
          |                      ^
      396 |     expect(xpAfter).toBe(monthlyLimit);
      397 |   },
      398 | );
        at Object.<anonymous> (/Users/rkiyosak/ayo-regression-new/tests/step_definitions/bottom_navigation/cashier/iqos_xp/special_event_points.spec.ts:395:22)
        at BddStepInvoker.runWithAfterStepHooks (/Users/rkiyosak/ayo-regression-new/node_modules/@ayo-regression-core-packages/playwright-bdd/src/runtime/bddStepInvoker.ts:82:16)
        at BddStepInvoker.invoke (/Users/rkiyosak/ayo-regression-new/node_modules/@ayo-regression-core-packages/playwright-bdd/src/runtime/bddStepInvoker.ts:55:5)
        at /Users/rkiyosak/ayo-regression-new/.features-gen/tests/features/iqos_xp/special_event/special_event_points.feature.spec.js:32:5

  1 failed
    .features-gen/tests/features/iqos_xp/special_event/special_event_points.feature.spec.js:28:7 › Special Event Points - Survey XP Earning › [WEB][AYO Kasir][Partner Program] Member - Receive partial points when reaching monthly limit @resetOrderIpMiles @CDE-79943 @continue @clearCart @critical 

To open last HTML report run:

  npx playwright show-report reports/playwright-report

rkiyosak@PMIIDIDNL19843 ayo-regression-new % 

Special Event Points - Survey XP Earning
[WEB][AYO Kasir][Partner Program] Member - Receive partial points when reaching monthly limit
tests/features/iqos_xp/special_event/special_event_points.feature.spec.js:28
2.3m
resetOrderIpMiles
CDE-79943
continue
clearCart
critical
Errors
Copy prompt
Error: expect(received).toBeLessThan(expected)

Expected: < 101
Received:   200

   at ../tests/step_definitions/bottom_navigation/cashier/iqos_xp/special_event_points.spec.ts:395

  393 |     // Partial: the member got points, but only up to the limit, not the full reward.
  394 |     expect(xpGained).toBeGreaterThan(0);
> 395 |     expect(xpGained).toBeLessThan(fullReward);
      |                      ^
  396 |     expect(xpAfter).toBe(monthlyLimit);
  397 |   },
  398 | );
    at Object.<anonymous> (/Users/rkiyosak/ayo-regression-new/tests/step_definitions/bottom_navigation/cashier/iqos_xp/special_event_points.spec.ts:395:22)
    at BddStepInvoker.runWithAfterStepHooks (/Users/rkiyosak/ayo-regression-new/node_modules/@ayo-regression-core-packages/playwright-bdd/src/runtime/bddStepInvoker.ts:82:16)
    at BddStepInvoker.invoke (/Users/rkiyosak/ayo-regression-new/node_modules/@ayo-regression-core-packages/playwright-bdd/src/runtime/bddStepInvoker.ts:55:5)
    at /Users/rkiyosak/ayo-regression-new/.features-gen/tests/features/iqos_xp/special_event/special_event_points.feature.spec.js:32:5
Test Steps
7.2sBefore Hooks
17.0sGiven User prepares an existing IQOS member for monthly limit test— tests/features/iqos_xp/special_event/special_event_points.feature.spec.js:29
32.0sAnd User buys IQOS Test Iluma for the "special event monthly limit" member through the cart— tests/features/iqos_xp/special_event/special_event_points.feature.spec.js:30
13.6sWhen User continues the survey from the order success screen and chooses XP points— tests/features/iqos_xp/special_event/special_event_points.feature.spec.js:31
8.8sThen Member XP should be capped at the monthly limit of 100 XP out of 101 XP— tests/features/iqos_xp/special_event/special_event_points.feature.spec.js:32
  31 |     await When('User continues the survey from the order success screen and chooses XP points', null, { basePage, cartPage, iqosXpPage, page, testContext }); 
  32 |     await Then('Member XP should be capped at the monthly limit of 100 XP out of 101 XP', null, { basePage, cashierPage, iqosXpPage, page, testContext }); 
     |           ^
  33 |   });
0mspage.waitForLoadState— ../tests/step_definitions/hooks.spec.ts:218
2mslocator.isVisible(#onetrust-accept-btn-handler)— ../src/page_objects/base.page.ts:95
17mslocator.isVisible(#kasirIframe >> internal:control=enter-frame >> internal:role=button[name="Accept All Cookies"i])— ../src/page_objects/base.page.ts:95
2mslocator.isVisible(#kasirIframe >> internal:control=enter-frame >> iframe >> internal:control=enter-frame >> internal:role=button[name="Accept All Cookies"i])— ../src/page_objects/base.page.ts:95
13mslocator.isVisible(iframe[title="External Web Content"] >> internal:control=enter-frame >> internal:role=button[name="Accept All Cookies"i])— ../src/page_objects/base.page.ts:95
1mspage.evaluate— ../tests/step_definitions/hooks.spec.ts:250
2msframe.evaluate ✕ 2— ../tests/step_definitions/hooks.spec.ts:250
224mspage.goto(https://kasir.qa.src.id/kasir)— ../tests/step_definitions/bottom_navigation/cashier/iqos_xp/special_event_points.spec.ts:406
416mspage.waitForURL— ../tests/step_definitions/bottom_navigation/cashier/iqos_xp/special_event_points.spec.ts:407
1.3slocator.getByTestId('btn-ip-miles').first().waitFor— ../tests/step_definitions/bottom_navigation/cashier/iqos_xp/special_event_points.spec.ts:408
30mslocator.getByTestId('btn-ip-miles').first().click— ../tests/step_definitions/bottom_navigation/cashier/iqos_xp/special_event_points.spec.ts:412
1.0spage.waitForTimeout— ../tests/step_definitions/bottom_navigation/cashier/iqos_xp/special_event_points.spec.ts:413
598mspage.reload— ../tests/step_definitions/bottom_navigation/cashier/iqos_xp/special_event_points.spec.ts:414
5.0spage.waitForTimeout— ../tests/step_definitions/bottom_navigation/cashier/iqos_xp/special_event_points.spec.ts:415
23mslocator.isVisible(iframe[src*="kasir-angular.qa.src.id"] >> internal:control=enter-frame >> internal:role=textbox[name="Email"i])— ../tests/step_definitions/bottom_navigation/cashier/iqos_xp/special_event_points.spec.ts:417
4mslocator.waitFor(iframe[src*="kasir-angular.qa.src.id"] >> internal:control=enter-frame >> internal:text=/\d[\d.,]*\s*XP/ >> visible=true >> nth=0)— ../src/page_objects/bottom_navigation/cashier/iqos_xp.page.ts:953
3mslocator.innerText(iframe[src*="kasir-angular.qa.src.id"] >> internal:control=enter-frame >> internal:text=/\d[\d.,]*\s*XP/ >> visible=true >> nth=0)— ../src/page_objects/bottom_navigation/cashier/iqos_xp.page.ts:958
0msexpect.toBeGreaterThan— ../tests/step_definitions/bottom_navigation/cashier/iqos_xp/special_event_points.spec.ts:394
2msexpect.toBeLessThan— ../tests/step_definitions/bottom_navigation/cashier/iqos_xp/special_event_points.spec.ts:395
  394 |     expect(xpGained).toBeGreaterThan(0);
  395 |     expect(xpGained).toBeLessThan(fullReward);
      |                      ^
  396 |     expect(xpAfter).toBe(monthlyLimit);
131mspage.screenshot— ../tests/step_definitions/hooks.spec.ts:566
1msattach "screenshot 4"— ../tests/step_definitions/hooks.spec.ts:573
0mspage.waitForLoadState— ../tests/step_definitions/hooks.spec.ts:223
1mslocator.isVisible(#onetrust-accept-btn-handler)— ../src/page_objects/base.page.ts:95
2mslocator.isVisible(#kasirIframe >> internal:control=enter-frame >> internal:role=button[name="Accept All Cookies"i])— ../src/page_objects/base.page.ts:95
1mslocator.isVisible(#kasirIframe >> internal:control=enter-frame >> iframe >> internal:control=enter-frame >> internal:role=button[name="Accept All Cookies"i])— ../src/page_objects/base.page.ts:95
5mslocator.isVisible(iframe[title="External Web Content"] >> internal:control=enter-frame >> internal:role=button[name="Accept All Cookies"i])— ../src/page_objects/base.page.ts:95
1.1mAfter Hooks
2.0sWorker Cleanup
