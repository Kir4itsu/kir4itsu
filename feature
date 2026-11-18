Feature: Special Event Points - Survey XP Earning

# A member can fill the Partner Program survey once per day, so each TC
# registers a fresh IQOS member through a completed Kasir transaction (the
# member only exists after the order succeeds). Creates 1 member + 1 order per TC.

@pre-condition @continue
Scenario: [WEB][AYO Kasir][Login] Login with IQOS XP Account
    Given User is on the "Login" page
    When User "IQOS XP RRP Kiosk" is logged in
    Then User should be redirected to "Cashier" page

@CDE-79942 @continue @clearCart @critical
Scenario: [WEB][AYO Kasir][Partner Program] Member - Earn points from survey completion
    Given User registers a new IQOS member for "special event"
    And User is on the "Partner Program" page
    And User searches the "special event" member and records the current XP
    When User completes the survey and chooses XP points
    Then Member XP should be higher than before the survey

@CDE-79945 @continue @clearCart @critical
Scenario: [WEB][AYO Kasir][Partner Program] Database - Verify points are saved after survey
    Given User registers a new IQOS member for "special event database"
    And User is on the "Partner Program" page
    And User searches the "special event database" member and records the current XP
    When User completes the survey and chooses XP points
    Then Member XP should still be higher than before after reloading the page

# CDE-79943: Member receives partial points when reaching the monthly XP limit.
# Principal setup (Chandra): "program program" monthly limit = 100 XP, and the
# special event mapped to IQOS XP RRP Kiosk adds bonus XP. Waiting for Chandra
# to clarify which product is mapped and has correct start date for bonus.
@resetOrderIpMiles @CDE-79943 @continue @clearCart @critical
Scenario: [WEB][AYO Kasir][Partner Program] Member - Receive partial points when reaching monthly limit
    Given User prepares an existing IQOS member for monthly limit test
    And User buys IQOS Test Iluma for the "special event monthly limit" member through the cart
    When User continues the survey from the order success screen and chooses XP points
    Then Member XP should be capped at the monthly limit of 100 XP out of 101 XP

# A fresh member fills the survey once (accepted, +XP), then tries again and is
# rejected with "Pengisian survei telah melebihi batas. Silakan coba lagi besok."
# (API 422). Same approach as ADR (Surya). This is the limit message QA shows;
# confirm with the team if a separate monthly-limit message is expected.
@CDE-79944 @continue @clearCart @critical
Scenario: [WEB][AYO Kasir][Partner Program] Member - Survey rejected when monthly XP limit reached
    Given User registers a new IQOS member for "survey limit"
    And User is on the "Partner Program" page
    And User searches the "survey limit" member and records the current XP
    And User completes the survey and chooses XP points
    When User opens the survey again for the same member
    Then System rejects the survey with the survey limit message
    And Member XP should not change after the rejected survey
