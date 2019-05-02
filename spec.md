# Specifications for the Rails Assessment

Specs:
- [x] Using Ruby on Rails for the project
Yes, built with `Rails 5.2.3 `

## Associations
- [x] Include at least one has_many relationship
`Category` has_many `items`, Category model line 2
`User` has_many `carts`, User model line 6

- [x] Include at least one belongs_to relationship
`item` belongs_to `category`, Product model line 2
`line_items` belongs_to `cart`, line_item model line 2

- [x] Include at least one has_many through relationship
`Cart` has_many `items` through `line_item`, Cart model line 4

- [x] The "through" part of the has_many through includes at least one user submittable attribute
`Item.category.title` 

## Validation
- [x] Include reasonable validations for simple model objects
`Category, Item, User` model objects have validations

- [x] Include form display of validation errors
All create actions have validation error display, see `Category, item, User` #new view

## User authentication 
- [x] Include signup
Using `Devise` 

- [x] Include login
Using `Devise`

- [x] Include logout
Using `Devise`

- [x] Include third party signup/login
Using `Omniauth` with `OmniAuth-facebook` strategy to enable facebook signup/login

Confirm:
- [x] The application is pretty DRY
- [x] Limited logic in controllers
Using private method to limit controller logic, see:

- [x] Views use partials if appropriate
Using partial to display New / Edit form:
    - Category `_form` partial
    - Items `_form` partial

Using partial to display category:
     -Category `_items` partial