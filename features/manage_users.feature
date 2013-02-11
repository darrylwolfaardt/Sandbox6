Feature: Manage Users
  In order to manage user details
  As a security enthusiast
  I want to edit user profiles only when authorized

  Scenario Outline: Show or hide edit profile link
  #  Given the following user records
  #    | name   | password |
  #   | bob    | secret12 |
  #    | admin  | secret12 |
  #    | phredd | secret78 |

    Given the following user records and role assignments
     | name   | password | rolename |
     | phredd | secret12 | User     |
     | bob  | secret12 | Admin    |

   And I am logged in as "<login>" with password "secret12"
    When I visit profile for "<profile>"
    Then I should <action>

  Examples:
    | login | profile | action                 |
    | admin | phredd     | see "Edit Profile"     |
    | phredd   | phredd     | see "Edit Profile"     |
    |       | bob     | not see "Edit Profile" |
    | phredd   | admin   | not see "Edit Profile" |